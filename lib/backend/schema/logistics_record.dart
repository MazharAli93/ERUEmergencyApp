import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LogisticsRecord extends FirestoreRecord {
  LogisticsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "Logistics_Type" field.
  String? _logisticsType;
  String get logisticsType => _logisticsType ?? '';
  bool hasLogisticsType() => _logisticsType != null;

  // "Created_By" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "Quantity" field.
  String? _quantity;
  String get quantity => _quantity ?? '';
  bool hasQuantity() => _quantity != null;

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

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _logisticsType = snapshotData['Logistics_Type'] as String?;
    _createdBy = snapshotData['Created_By'] as DocumentReference?;
    _quantity = snapshotData['Quantity'] as String?;
    _district = snapshotData['District'] as String?;
    _city = snapshotData['City'] as String?;
    _town = snapshotData['Town'] as String?;
    _location = snapshotData['Location'] as String?;
    _description = snapshotData['Description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Logistics');

  static Stream<LogisticsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LogisticsRecord.fromSnapshot(s));

  static Future<LogisticsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LogisticsRecord.fromSnapshot(s));

  static LogisticsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LogisticsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LogisticsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LogisticsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LogisticsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LogisticsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLogisticsRecordData({
  DateTime? createdAt,
  String? logisticsType,
  DocumentReference? createdBy,
  String? quantity,
  String? district,
  String? city,
  String? town,
  String? location,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'Logistics_Type': logisticsType,
      'Created_By': createdBy,
      'Quantity': quantity,
      'District': district,
      'City': city,
      'Town': town,
      'Location': location,
      'Description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class LogisticsRecordDocumentEquality implements Equality<LogisticsRecord> {
  const LogisticsRecordDocumentEquality();

  @override
  bool equals(LogisticsRecord? e1, LogisticsRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.logisticsType == e2?.logisticsType &&
        e1?.createdBy == e2?.createdBy &&
        e1?.quantity == e2?.quantity &&
        e1?.district == e2?.district &&
        e1?.city == e2?.city &&
        e1?.town == e2?.town &&
        e1?.location == e2?.location &&
        e1?.description == e2?.description;
  }

  @override
  int hash(LogisticsRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.logisticsType,
        e?.createdBy,
        e?.quantity,
        e?.district,
        e?.city,
        e?.town,
        e?.location,
        e?.description
      ]);

  @override
  bool isValidKey(Object? o) => o is LogisticsRecord;
}
