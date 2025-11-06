import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/config/app_dimensions.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../data/services/supabase_auth_service.dart';
import '../../widgets/so_button.dart';
import '../../widgets/so_card.dart';
import 'email_field.dart';
import 'password_field.dart';

class SoEmailAuth extends ConsumerStatefulWidget {
  // App branding
  final Widget appIcon;
  final String appName;

  // Callbacks
  final VoidCallback onSignInSuccess;
  final VoidCallback onSignUpSuccess;
  final VoidCallback? onPasswordResetEmailSent;
  final void Function(Object error)? onError;
  final VoidCallback? onSkip;
  final VoidCallback? onTermsTap;

  // Initial state
  final bool showSkip;
  final bool isSigningIn;

  // Redirect
  final String? redirectTo;

  const SoEmailAuth({
    super.key,
    required this.appIcon,
    required this.appName,
    required this.onSignInSuccess,
    required this.onSignUpSuccess,
    this.onPasswordResetEmailSent,
    this.onError,
    this.onSkip,
    this.onTermsTap,
    this.showSkip = true,
    this.isSigningIn = true,
    this.redirectTo,
  });

  @override
  ConsumerState<SoEmailAuth> createState() => _SoEmailAuthState();
}

class _SoEmailAuthState extends ConsumerState<SoEmailAuth> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _isSigningIn = true;
  bool _isRecoveringPassword = false;
  bool _isLoading = false;
  bool _acceptTerms = false;

  @override
  void initState() {
    super.initState();
    _isSigningIn = widget.isSigningIn;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final strings = context.strings;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimensions.spacing24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: SoCard(
              padding: const EdgeInsets.all(AppDimensions.spacing32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Skip button
                  if (widget.showSkip) ...[
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: widget.onSkip,
                        child: Text(strings.skip),
                      ),
                    ),
                  ],

                  // App Icon
                  Center(child: widget.appIcon),
                  const SizedBox(height: AppDimensions.spacing24),

                  // Title
                  Text(
                    _isRecoveringPassword
                        ? strings.passwordRecoveryTitle
                        : (_isSigningIn ? strings.signInTitle : strings.signUpTitle),
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.spacing24),

                  // Form
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Email Field
                        EmailField(
                          controller: _emailController,
                          label: strings.enterEmail,
                        ),
                        const SizedBox(height: AppDimensions.spacing16),

                        // Password Field
                        if (!_isRecoveringPassword) ...[
                          PasswordField(
                            controller: _passwordController,
                            label: strings.enterPassword,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return strings.requiredFieldError;
                              }
                              if (value.length < 6) {
                                return strings.passwordLengthError;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: AppDimensions.spacing16),
                        ],

                        // Confirm Password Field (Sign Up only)
                        if (!_isSigningIn && !_isRecoveringPassword) ...[
                          PasswordField(
                            controller: _confirmPasswordController,
                            label: strings.labelConfirmPassword,
                            validator: (value) {
                              if (value != _passwordController.text) {
                                return strings.differentPasswordsError;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: AppDimensions.spacing16),
                        ],

                        // Forgot Password (Sign In only)
                        if (_isSigningIn && !_isRecoveringPassword) ...[
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                setState(() => _isRecoveringPassword = true);
                              },
                              child: Text(strings.forgotPassword),
                            ),
                          ),
                          const SizedBox(height: AppDimensions.spacing8),
                        ],

                        // Terms & Conditions Checkbox (Sign Up only)
                        if (!_isSigningIn && !_isRecoveringPassword) ...[
                          FormField<bool>(
                            initialValue: _acceptTerms,
                            validator: (value) {
                              if (value != true) {
                                return strings.missingConsentError;
                              }
                              return null;
                            },
                            builder: (field) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                        value: _acceptTerms,
                                        onChanged: (value) {
                                          setState(() => _acceptTerms = value ?? false);
                                          field.didChange(value);
                                        },
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: AppDimensions.spacing12,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              style: theme.textTheme.bodyMedium,
                                              children: [
                                                TextSpan(text: strings.labelConsentTermsAndConditions),
                                                TextSpan(
                                                  text: strings.labelTermsAndConditions,
                                                  style: theme.textTheme.bodyMedium?.copyWith(
                                                    color: colorScheme.primary,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = widget.onTermsTap,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  if (field.hasError)
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: AppDimensions.spacing16,
                                        top: AppDimensions.spacing4,
                                      ),
                                      child: Text(
                                        field.errorText!,
                                        style: theme.textTheme.bodySmall?.copyWith(
                                          color: colorScheme.error,
                                        ),
                                      ),
                                    ),
                                ],
                              );
                            },
                          ),
                          const SizedBox(height: AppDimensions.spacing8),
                        ],

                        // Toggle Sign In/Sign Up Text
                        if (!_isRecoveringPassword) ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _isSigningIn
                                    ? strings.dontHaveAccount
                                    : strings.haveAccount,
                                style: theme.textTheme.bodyMedium,
                              ),
                              TextButton(
                                onPressed: () {
                                  setState(() => _isSigningIn = !_isSigningIn);
                                },
                                child: Text(
                                  _isSigningIn
                                      ? strings.signUp
                                      : strings.signIn,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppDimensions.spacing16),
                        ],

                        // Main Action Button
                        SoButton(
                          text: _isRecoveringPassword
                              ? strings.sendPasswordReset
                              : (_isSigningIn
                                  ? strings.signIn
                                  : strings.signUp),
                          onPressed: _isLoading ? null : _handleAction,
                          isLoading: _isLoading,
                        ),

                        // Back to Sign In (Password Recovery only)
                        if (_isRecoveringPassword) ...[
                          const SizedBox(height: AppDimensions.spacing8),
                          TextButton(
                            onPressed: () {
                              setState(() => _isRecoveringPassword = false);
                            },
                            child: Text(strings.backToSignIn),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleAction() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() => _isLoading = true);

    try {
      final authService = ref.read(supabaseAuthServiceProvider);
      final strings = context.strings;

      if (_isRecoveringPassword) {
        await authService.resetPasswordForEmail(
          _emailController.text.trim(),
          redirectTo: widget.redirectTo,
        );
        widget.onPasswordResetEmailSent?.call();
        if (mounted) {
          context.showSnackBar(strings.passwordResetSent);
        }
      } else if (_isSigningIn) {
        await authService.signInWithPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
        widget.onSignInSuccess();
      } else {
        await authService.signUp(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
          emailRedirectTo: widget.redirectTo,
          data: {'consent_given': _acceptTerms},
        );
        widget.onSignUpSuccess();
      }
    } catch (error) {
      if (widget.onError != null) {
        widget.onError!(error);
      } else if (mounted) {
        context.showErrorSnackBar(error.toString());
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }
}

