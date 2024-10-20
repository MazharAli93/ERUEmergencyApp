import '../database.dart';

class CityTable extends SupabaseTable<CityRow> {
  @override
  String get tableName => 'City';

  @override
  CityRow createRow(Map<String, dynamic> data) => CityRow(data);
}

class CityRow extends SupabaseDataRow {
  CityRow(super.data);

  @override
  SupabaseTable get table => CityTable();

  int get cityId => getField<int>('City_id')!;
  set cityId(int value) => setField<int>('City_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get districtRef => getField<int>('District_Ref');
  set districtRef(int? value) => setField<int>('District_Ref', value);

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);
}
