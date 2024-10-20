import '../database.dart';

class DistrictsTable extends SupabaseTable<DistrictsRow> {
  @override
  String get tableName => 'Districts';

  @override
  DistrictsRow createRow(Map<String, dynamic> data) => DistrictsRow(data);
}

class DistrictsRow extends SupabaseDataRow {
  DistrictsRow(super.data);

  @override
  SupabaseTable get table => DistrictsTable();

  int get districtId => getField<int>('District_id')!;
  set districtId(int value) => setField<int>('District_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);
}
