import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/config/app_config.dart';
import '../../core/utils/app_logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


part 'supabase_crud_service.g.dart';

@riverpod
SupabaseCrudService supabaseCrudService(Ref ref) {
  return SupabaseCrudService();
}

class SupabaseCrudService {
  SupabaseClient get client => Supabase.instance.client;

  static Future<void> initialize() async {
    await Supabase.initialize(
      url: AppConfig.supabaseUrl,
      anonKey: AppConfig.supabaseAnonKey,
    );
    AppLogger.i('Supabase initialized');
  }

  Future<List<Map<String, dynamic>>> select(String table) async {
    try {
      final data = await client.from(table).select();
      return data;
    } catch (e) {
      AppLogger.e('Select error from $table', e);
      rethrow;
    }
  }

  Future<void> insert(String table, Map<String, dynamic> data) async {
    try {
      await client.from(table).insert(data);
      AppLogger.i('Data inserted into $table');
    } catch (e) {
      AppLogger.e('Insert error into $table', e);
      rethrow;
    }
  }

  Future<void> update(String table, String id, Map<String, dynamic> data) async {
    try {
      await client.from(table).update(data).eq('id', id);
      AppLogger.i('Data updated in $table');
    } catch (e) {
      AppLogger.e('Update error in $table', e);
      rethrow;
    }
  }

  Future<void> delete(String table, String id) async {
    try {
      await client.from(table).delete().eq('id', id);
      AppLogger.i('Data deleted from $table');
    } catch (e) {
      AppLogger.e('Delete error from $table', e);
      rethrow;
    }
  }
}