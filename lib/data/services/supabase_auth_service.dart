import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/config/app_config.dart';
import '../../core/utils/app_logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'supabase_auth_service.g.dart';

@riverpod
SupabaseAuthService supabaseAuthService(Ref ref) {
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
    } catch (e) {
      AppLogger.e('Sign in error', e);
      rethrow;
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
    } catch (e) {
      AppLogger.e('Sign up error', e);
      rethrow;
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
    } catch (e) {
      AppLogger.e('Sign up error', e);
      rethrow;
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
    } catch (e) {
      AppLogger.e('Password reset error', e);
      rethrow;
    }
  }

  // Auth - Anonymous
  Future<AuthResponse> signInAnonymously() async {
    try {
      final response = await client.auth.signInAnonymously();
      AppLogger.i('Anonymous user signed in: ${response.user?.id}');
      return response;
    } catch (e) {
      AppLogger.e('Anonymous sign in error', e);
      rethrow;
    }
  }

  // Auth - Sign Out
  Future<void> signOut() async {
    try {
      await client.auth.signOut();
      AppLogger.i('User signed out');
    } catch (e) {
      AppLogger.e('Sign out error', e);
      rethrow;
    }
  }

  // Current User
  User? get currentUser => client.auth.currentUser;

  Stream<AuthState> get authStateChanges => client.auth.onAuthStateChange;
}
