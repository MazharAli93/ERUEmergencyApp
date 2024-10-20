import '../database.dart';

class LogisticsTable extends SupabaseTable<LogisticsRow> {
  @override
  String get tableName => 'Logistics';

  @override
  LogisticsRow createRow(Map<String, dynamic> data) => LogisticsRow(data);
}

class LogisticsRow extends SupabaseDataRow {
  LogisticsRow(super.data);

  @override
  SupabaseTable get table => LogisticsTable();

  int get logisticsId => getField<int>('Logistics_id')!;
  set logisticsId(int value) => setField<int>('Logistics_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get createdByFirebaseRef =>
      getField<String>('Created_By_Firebase_Ref');
  set createdByFirebaseRef(String? value) =>
      setField<String>('Created_By_Firebase_Ref', value);

  String? get logisticsType => getField<String>('Logistics_Type');
  set logisticsType(String? value) => setField<String>('Logistics_Type', value);

  String? get quantity => getField<String>('Quantity');
  set quantity(String? value) => setField<String>('Quantity', value);

  String? get district => getField<String>('District');
  set district(String? value) => setField<String>('District', value);

  String? get city => getField<String>('City');
  set city(String? value) => setField<String>('City', value);

  String? get town => getField<String>('Town');
  set town(String? value) => setField<String>('Town', value);

  String? get location => getField<String>('Location');
  set location(String? value) => setField<String>('Location', value);

  String? get description => getField<String>('Description');
  set description(String? value) => setField<String>('Description', value);
}
