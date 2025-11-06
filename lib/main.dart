import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'firebase_options.dart';
import 'core/config/app_theme.dart';
import 'core/utils/app_logger.dart';
import 'presentation/providers/app_providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load environment variables
  await dotenv.load(fileName: '.env');

  // Initialize all services
  await _initializeSupabase();
  await _initializeFirebase();
  await _initializeRevenueCat();

  runApp(const ProviderScope(child: MyApp()));
}

/// Initialize Supabase
/// Replace .env with your actual Supabase URL and anon key
Future<void> _initializeSupabase() async {
  try {
    await Supabase.initialize(
      url: dotenv.env['SUPABASE_URL'] ?? '',
      anonKey: dotenv.env['SUPABASE_ANON_KEY'] ?? '',
    );
    AppLogger.i('✓ Supabase initialized successfully');
  } catch (e) {
    AppLogger.e('✗ Supabase initialization failed', e);
    AppLogger.w('Please configure your Supabase URL and anon key in the .env file');
  }
}

/// Initialize Firebase
/// Replace firebase_options.dart with your actual Firebase configuration
Future<void> _initializeFirebase() async {
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    AppLogger.i('✓ Firebase initialized successfully');
  } catch (e) {
    AppLogger.e('✗ Firebase initialization failed', e);
    AppLogger.w('Please configure firebase_options.dart with your Firebase project settings');
  }
}

/// Initialize RevenueCat (Paywall)
/// Replace .env with your actual RevenueCat API key
Future<void> _initializeRevenueCat() async {
  try {
    final apiKey = dotenv.env['REVENUECAT_API_KEY'] ?? '';

    if (apiKey.isEmpty || apiKey == 'your-revenuecat-key') {
      AppLogger.w('⚠ RevenueCat API key not configured');
      return;
    }

    await Purchases.configure(
      PurchasesConfiguration(apiKey)
        ..appUserID = null // Optional: set a custom user ID
        ..observerMode = false,
    );

    AppLogger.i('✓ RevenueCat initialized successfully');
  } catch (e) {
    AppLogger.e('✗ RevenueCat initialization failed', e);
    AppLogger.w('Please configure your RevenueCat API key in the .env file');
  }
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'App Kit',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      // Localizations
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('fr', ''), // French
      ],
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}

