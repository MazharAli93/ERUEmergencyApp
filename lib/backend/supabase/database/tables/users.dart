import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'Users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  int get userId => getField<int>('User_id')!;
  set userId(int value) => setField<int>('User_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get firebaseRef => getField<String>('Firebase_Ref');
  set firebaseRef(String? value) => setField<String>('Firebase_Ref', value);

  String? get firstName => getField<String>('First_Name');
  set firstName(String? value) => setField<String>('First_Name', value);

  String? get middleName => getField<String>('Middle_Name');
  set middleName(String? value) => setField<String>('Middle_Name', value);

  String? get lastName => getField<String>('Last_Name');
  set lastName(String? value) => setField<String>('Last_Name', value);

  String? get email => getField<String>('Email');
  set email(String? value) => setField<String>('Email', value);

  String? get mobile => getField<String>('Mobile');
  set mobile(String? value) => setField<String>('Mobile', value);

  String? get eRUNickname => getField<String>('ERU_Nickname');
  set eRUNickname(String? value) => setField<String>('ERU_Nickname', value);

  bool? get authorized => getField<bool>('Authorized');
  set authorized(bool? value) => setField<bool>('Authorized', value);

  int? get adminRole => getField<int>('AdminRole');
  set adminRole(int? value) => setField<int>('AdminRole', value);
}
