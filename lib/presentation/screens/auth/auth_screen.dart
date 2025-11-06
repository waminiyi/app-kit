import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/routing/app_routes.dart';
import 'so_email_auth.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SoEmailAuth(
      appIcon: const FlutterLogo(size: 100),
      appName: 'App Kit',
      onSignInSuccess: () {
        context.go(AppRoutes.home);
      },
      onSignUpSuccess: () {
        context.go(AppRoutes.home);
      },
      onError: (error) {
        context.showErrorSnackBar(error.toString());
      },
      onSkip: () {
        context.go(AppRoutes.home);
      },
      showSkip: true,
      onTermsTap: () {
        // TODO: Ouvrir les CGU
        context.showSnackBar('Voir les conditions générales');
      },
    );
  }
}

