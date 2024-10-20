import '../database.dart';

class InformationTable extends SupabaseTable<InformationRow> {
  @override
  String get tableName => 'Information';

  @override
  InformationRow createRow(Map<String, dynamic> data) => InformationRow(data);
}

class InformationRow extends SupabaseDataRow {
  InformationRow(super.data);

  @override
  SupabaseTable get table => InformationTable();

  int get informationId => getField<int>('Information_id')!;
  set informationId(int value) => setField<int>('Information_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get createdByName => getField<String>('Created_By_Name');
  set createdByName(String? value) =>
      setField<String>('Created_By_Name', value);

  String? get createdById => getField<String>('Created_By_Id');
  set createdById(String? value) => setField<String>('Created_By_Id', value);

  String? get infoType => getField<String>('Info_Type');
  set infoType(String? value) => setField<String>('Info_Type', value);

  String? get firstName => getField<String>('FirstName');
  set firstName(String? value) => setField<String>('FirstName', value);

  String? get middleName => getField<String>('MiddleName');
  set middleName(String? value) => setField<String>('MiddleName', value);

  String? get lastName => getField<String>('LastName');
  set lastName(String? value) => setField<String>('LastName', value);

  String? get motherName => getField<String>('MotherName');
  set motherName(String? value) => setField<String>('MotherName', value);

  String? get gender => getField<String>('Gender');
  set gender(String? value) => setField<String>('Gender', value);

  String? get age => getField<String>('Age');
  set age(String? value) => setField<String>('Age', value);

  String? get mobile => getField<String>('Mobile');
  set mobile(String? value) => setField<String>('Mobile', value);

  String? get bloodType => getField<String>('BloodType');
  set bloodType(String? value) => setField<String>('BloodType', value);

  String? get district => getField<String>('District');
  set district(String? value) => setField<String>('District', value);

  String? get city => getField<String>('City');
  set city(String? value) => setField<String>('City', value);

  String? get town => getField<String>('Town');
  set town(String? value) => setField<String>('Town', value);

  String? get treatment => getField<String>('Treatment');
  set treatment(String? value) => setField<String>('Treatment', value);

  String? get triageColor => getField<String>('Triage_Color');
  set triageColor(String? value) => setField<String>('Triage_Color', value);

  String? get injuryLocation => getField<String>('Injury_Location');
  set injuryLocation(String? value) =>
      setField<String>('Injury_Location', value);

  String? get note => getField<String>('Note');
  set note(String? value) => setField<String>('Note', value);

  String? get condition => getField<String>('Condition');
  set condition(String? value) => setField<String>('Condition', value);

  String? get currentLocation => getField<String>('Current_Location');
  set currentLocation(String? value) =>
      setField<String>('Current_Location', value);
}
