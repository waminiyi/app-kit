import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/config/app_config.dart';
import '../../core/utils/app_logger.dart';

part 'supabase_storage_service.g.dart';

@riverpod
SupabaseStorageService supabaseStorageService(Ref ref) {
  return SupabaseStorageService();
}

class SupabaseStorageService {
  SupabaseClient get client => Supabase.instance.client;

  static Future<void> initialize() async {
    await Supabase.initialize(
      url: AppConfig.supabaseUrl,
      anonKey: AppConfig.supabaseAnonKey,
    );
    AppLogger.i('Supabase initialized');
  }

  Future<String> uploadImage(
      String bucket, String path, Uint8List bytes) async {
    try {
      await client.storage.from(bucket).uploadBinary(path, bytes);
      final url = client.storage.from(bucket).getPublicUrl(path);
      AppLogger.i('Image uploaded: $url');
      return url;
    } catch (e) {
      AppLogger.e('Image upload error', e);
      rethrow;
    }
  }
}
