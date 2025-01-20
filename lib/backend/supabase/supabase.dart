import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://yhzjwpsmhlufcxdaedde.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloemp3cHNtaGx1ZmN4ZGFlZGRlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk2OTQ3MjUsImV4cCI6MjA0NTI3MDcyNX0.TZiKBnPM0a8XggUkeDg_kzAUe72UEKy3J-8sCb99X2E';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
        authOptions:
            const FlutterAuthClientOptions(authFlowType: AuthFlowType.implicit),
      );
}
