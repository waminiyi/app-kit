import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Environment { dev, prod }

class AppConfig {
  static Environment get environment {
    final env = dotenv.env['ENV'] ?? 'dev';
    return env == 'prod' ? Environment.prod : Environment.dev;
  }

  static String get supabaseUrl => dotenv.env['SUPABASE_URL'] ?? '';

  static String get supabaseAnonKey => dotenv.env['SUPABASE_ANON_KEY'] ?? '';

  static String get forceUpdateVersion =>
      dotenv.env['FORCE_UPDATE_VERSION'] ?? '1.0.0';

  static String get revenueCatApiKey => dotenv.env['REVENUECAT_API_KEY'] ?? '';

  static bool get isProduction => environment == Environment.prod;

  static bool get isDevelopment => environment == Environment.dev;
}
