import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://oyqmopaamvzncytgfwsg.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im95cW1vcGFhbXZ6bmN5dGdmd3NnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjcxMTI5MDUsImV4cCI6MjA0MjY4ODkwNX0.6oo9Tw5YRR3J2-Iuen4DiAb2lkIliAxmrmT5ZL7WQWQ';

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
      );
}
