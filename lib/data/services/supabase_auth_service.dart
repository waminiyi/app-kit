import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:gotrue/gotrue.dart' as gotrue;

import '../../core/config/app_config.dart';
import '../../core/exceptions/auth_exceptions.dart' as app_exceptions;
import '../../core/utils/app_logger.dart';

part 'supabase_auth_service.g.dart';

@riverpod
SupabaseAuthService supabaseAuthService(SupabaseAuthServiceRef ref) {
  return SupabaseAuthService();
}

class SupabaseAuthService {
  SupabaseClient get client => Supabase.instance.client;

  static Future<void> initialize() async {
    await Supabase.initialize(
      url: AppConfig.supabaseUrl,
      anonKey: AppConfig.supabaseAnonKey,
    );
    AppLogger.i('Supabase initialized');
  }

  // Auth - Email
  Future<AuthResponse> signInWithEmail(String email, String password) async {
    try {
      final response = await client.auth.signInWithPassword(
        email: email,
        password: password,
      );
      AppLogger.i('User signed in: ${response.user?.id}');
      return response;
    } on gotrue.AuthException {
      rethrow;
    } catch (e) {
      AppLogger.e('Sign in error', e);
      throw _mapSupabaseError(e);
    }
  }

  Future<AuthResponse> signInWithPassword({
    required String email,
    required String password,
  }) async {
    return signInWithEmail(email, password);
  }

  Future<AuthResponse> signUpWithEmail(String email, String password) async {
    try {
      final response = await client.auth.signUp(
        email: email,
        password: password,
      );
      AppLogger.i('User signed up: ${response.user?.id}');
      return response;
    } on gotrue.AuthException {
      rethrow;
    } catch (e) {
      AppLogger.e('Sign up error', e);
      throw _mapSupabaseError(e);
    }
  }

  Future<AuthResponse> signUp({
    required String email,
    required String password,
    String? emailRedirectTo,
    Map<String, dynamic>? data,
  }) async {
    try {
      final response = await client.auth.signUp(
        email: email,
        password: password,
        emailRedirectTo: emailRedirectTo,
        data: data,
      );
      AppLogger.i('User signed up: ${response.user?.id}');
      return response;
    } on gotrue.AuthException {
      rethrow;
    } catch (e) {
      AppLogger.e('Sign up error', e);
      throw _mapSupabaseError(e);
    }
  }

  Future<void> resetPasswordForEmail(
    String email, {
    String? redirectTo,
  }) async {
    try {
      await client.auth.resetPasswordForEmail(
        email,
        redirectTo: redirectTo,
      );
      AppLogger.i('Password reset email sent to: $email');
    } on gotrue.AuthException {
      rethrow;
    } catch (e) {
      AppLogger.e('Password reset error', e);
      throw _mapSupabaseError(e);
    }
  }

  // Auth - Anonymous
  Future<AuthResponse> signInAnonymously() async {
    try {
      final response = await client.auth.signInAnonymously();
      AppLogger.i('Anonymous user signed in: ${response.user?.id}');
      return response;
    } on gotrue.AuthException {
      rethrow;
    } catch (e) {
      AppLogger.e('Anonymous sign in error', e);
      throw _mapSupabaseError(e);
    }
  }

  // Auth - Sign Out
  Future<void> signOut() async {
    try {
      await client.auth.signOut();
      AppLogger.i('User signed out');
    } on gotrue.AuthException {
      rethrow;
    } catch (e) {
      AppLogger.e('Sign out error', e);
      throw _mapSupabaseError(e);
    }
  }

  // Current User
  User? get currentUser => client.auth.currentUser;

  Stream<AuthState> get authStateChanges => client.auth.onAuthStateChange;

  /// Map Supabase errors to custom AuthException
  app_exceptions.AuthenticationException _mapSupabaseError(Object error) {
    if (error is app_exceptions.AuthenticationException) {
      return error;
    }

    // Supabase error handling
    if (error is gotrue.AuthApiException) {
      final message = error.message.toLowerCase();
      final statusCode = error.statusCode;

      // Email already exists
      if (message.contains('user already registered') ||
          message.contains('email address already exists')) {
        return const app_exceptions.AuthenticationException.emailAlreadyInUse();
      }

      // Invalid credentials
      if (message.contains('invalid login credentials') ||
          message.contains('invalid email or password') ||
          statusCode == '400') {
        return const app_exceptions
            .AuthenticationException.invalidCredentials();
      }

      // Weak password
      if (message.contains('password') && message.contains('weak')) {
        return const app_exceptions.AuthenticationException.weakPassword();
      }

      // Invalid email format
      if (message.contains('invalid email')) {
        return const app_exceptions.AuthenticationException.invalidEmail();
      }

      // User not found
      if (message.contains('user not found')) {
        return const app_exceptions.AuthenticationException.userNotFound();
      }

      // Email not confirmed
      if (message.contains('email not confirmed')) {
        return const app_exceptions.AuthenticationException.emailNotConfirmed();
      }

      // Too many requests
      if (message.contains('too many requests') || statusCode == '429') {
        return const app_exceptions.AuthenticationException.tooManyRequests();
      }

      // Unauthorized
      if (statusCode == '401') {
        return const app_exceptions.AuthenticationException.unauthorized();
      }

      // Server error
      if (statusCode?.startsWith('5') == true) {
        return const app_exceptions.AuthenticationException.serverError();
      }

      return app_exceptions.AuthenticationException.unknown(error.message);
    }

    // PostgreSQL errors
    if (error is PostgrestException) {
      final message = error.message.toLowerCase();

      if (message.contains('unique constraint') ||
          message.contains('duplicate key')) {
        if (message.contains('username')) {
          return const app_exceptions
              .AuthenticationException.usernameAlreadyTaken();
        }
        if (message.contains('email')) {
          return const app_exceptions
              .AuthenticationException.emailAlreadyInUse();
        }
      }

      return app_exceptions.AuthenticationException.databaseError(
          error.message);
    }

    // Generic error
    return app_exceptions.AuthenticationException.unknown(error.toString());
  }
}
