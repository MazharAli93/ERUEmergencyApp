import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InformationRecord extends FirestoreRecord {
  InformationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Created_At" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "User_ID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "First_Name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "Middle_Name" field.
  String? _middleName;
  String get middleName => _middleName ?? '';
  bool hasMiddleName() => _middleName != null;

  // "Last_Name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "Mother_Name" field.
  String? _motherName;
  String get motherName => _motherName ?? '';
  bool hasMotherName() => _motherName != null;

  // "Mobile_Number" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  bool hasMobileNumber() => _mobileNumber != null;

  // "Data_Category" field.
  String? _dataCategory;
  String get dataCategory => _dataCategory ?? '';
  bool hasDataCategory() => _dataCategory != null;

  // "Gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "Age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "Blood_Type" field.
  String? _bloodType;
  String get bloodType => _bloodType ?? '';
  bool hasBloodType() => _bloodType != null;

  // "District" field.
  String? _district;
  String get district => _district ?? '';
  bool hasDistrict() => _district != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "Town" field.
  String? _town;
  String get town => _town ?? '';
  bool hasTown() => _town != null;

  // "Treatment" field.
  String? _treatment;
  String get treatment => _treatment ?? '';
  bool hasTreatment() => _treatment != null;

  // "Triage_Color" field.
  String? _triageColor;
  String get triageColor => _triageColor ?? '';
  bool hasTriageColor() => _triageColor != null;

  // "Injury_Location" field.
  String? _injuryLocation;
  String get injuryLocation => _injuryLocation ?? '';
  bool hasInjuryLocation() => _injuryLocation != null;

  // "Note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "Condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "Current_Location" field.
  String? _currentLocation;
  String get currentLocation => _currentLocation ?? '';
  bool hasCurrentLocation() => _currentLocation != null;

  void _initializeFields() {
    _createdAt = snapshotData['Created_At'] as DateTime?;
    _userID = snapshotData['User_ID'] as DocumentReference?;
    _firstName = snapshotData['First_Name'] as String?;
    _middleName = snapshotData['Middle_Name'] as String?;
    _lastName = snapshotData['Last_Name'] as String?;
    _motherName = snapshotData['Mother_Name'] as String?;
    _mobileNumber = snapshotData['Mobile_Number'] as String?;
    _dataCategory = snapshotData['Data_Category'] as String?;
    _gender = snapshotData['Gender'] as String?;
    _age = snapshotData['Age'] as String?;
    _bloodType = snapshotData['Blood_Type'] as String?;
    _district = snapshotData['District'] as String?;
    _city = snapshotData['City'] as String?;
    _town = snapshotData['Town'] as String?;
    _treatment = snapshotData['Treatment'] as String?;
    _triageColor = snapshotData['Triage_Color'] as String?;
    _injuryLocation = snapshotData['Injury_Location'] as String?;
    _note = snapshotData['Note'] as String?;
    _condition = snapshotData['Condition'] as String?;
    _currentLocation = snapshotData['Current_Location'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Information');

  static Stream<InformationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InformationRecord.fromSnapshot(s));

  static Future<InformationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InformationRecord.fromSnapshot(s));

  static InformationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InformationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InformationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InformationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InformationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InformationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInformationRecordData({
  DateTime? createdAt,
  DocumentReference? userID,
  String? firstName,
  String? middleName,
  String? lastName,
  String? motherName,
  String? mobileNumber,
  String? dataCategory,
  String? gender,
  String? age,
  String? bloodType,
  String? district,
  String? city,
  String? town,
  String? treatment,
  String? triageColor,
  String? injuryLocation,
  String? note,
  String? condition,
  String? currentLocation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Created_At': createdAt,
      'User_ID': userID,
      'First_Name': firstName,
      'Middle_Name': middleName,
      'Last_Name': lastName,
      'Mother_Name': motherName,
      'Mobile_Number': mobileNumber,
      'Data_Category': dataCategory,
      'Gender': gender,
      'Age': age,
      'Blood_Type': bloodType,
      'District': district,
      'City': city,
      'Town': town,
      'Treatment': treatment,
      'Triage_Color': triageColor,
      'Injury_Location': injuryLocation,
      'Note': note,
      'Condition': condition,
      'Current_Location': currentLocation,
    }.withoutNulls,
  );

  return firestoreData;
}

class InformationRecordDocumentEquality implements Equality<InformationRecord> {
  const InformationRecordDocumentEquality();

  @override
  bool equals(InformationRecord? e1, InformationRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.userID == e2?.userID &&
        e1?.firstName == e2?.firstName &&
        e1?.middleName == e2?.middleName &&
        e1?.lastName == e2?.lastName &&
        e1?.motherName == e2?.motherName &&
        e1?.mobileNumber == e2?.mobileNumber &&
        e1?.dataCategory == e2?.dataCategory &&
        e1?.gender == e2?.gender &&
        e1?.age == e2?.age &&
        e1?.bloodType == e2?.bloodType &&
        e1?.district == e2?.district &&
        e1?.city == e2?.city &&
        e1?.town == e2?.town &&
        e1?.treatment == e2?.treatment &&
        e1?.triageColor == e2?.triageColor &&
        e1?.injuryLocation == e2?.injuryLocation &&
        e1?.note == e2?.note &&
        e1?.condition == e2?.condition &&
        e1?.currentLocation == e2?.currentLocation;
  }

  @override
  int hash(InformationRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.userID,
        e?.firstName,
        e?.middleName,
        e?.lastName,
        e?.motherName,
        e?.mobileNumber,
        e?.dataCategory,
        e?.gender,
        e?.age,
        e?.bloodType,
        e?.district,
        e?.city,
        e?.town,
        e?.treatment,
        e?.triageColor,
        e?.injuryLocation,
        e?.note,
        e?.condition,
        e?.currentLocation
      ]);

  @override
  bool isValidKey(Object? o) => o is InformationRecord;
}
