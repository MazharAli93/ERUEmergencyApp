import '../database.dart';

class LogisticsTypeListTable extends SupabaseTable<LogisticsTypeListRow> {
  @override
  String get tableName => 'Logistics_Type_List';

  @override
  LogisticsTypeListRow createRow(Map<String, dynamic> data) =>
      LogisticsTypeListRow(data);
}

class LogisticsTypeListRow extends SupabaseDataRow {
  LogisticsTypeListRow(super.data);

  @override
  SupabaseTable get table => LogisticsTypeListTable();

  int get logisticsTypeListId => getField<int>('Logistics_Type_List_id')!;
  set logisticsTypeListId(int value) =>
      setField<int>('Logistics_Type_List_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get type => getField<String>('Type');
  set type(String? value) => setField<String>('Type', value);
}
