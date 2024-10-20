import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DistrictsRecord extends FirestoreRecord {
  DistrictsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Created_Date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _createdDate = snapshotData['Created_Date'] as DateTime?;
    _name = snapshotData['Name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Districts');

  static Stream<DistrictsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DistrictsRecord.fromSnapshot(s));

  static Future<DistrictsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DistrictsRecord.fromSnapshot(s));

  static DistrictsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DistrictsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DistrictsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DistrictsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DistrictsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DistrictsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDistrictsRecordData({
  DateTime? createdDate,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Created_Date': createdDate,
      'Name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class DistrictsRecordDocumentEquality implements Equality<DistrictsRecord> {
  const DistrictsRecordDocumentEquality();

  @override
  bool equals(DistrictsRecord? e1, DistrictsRecord? e2) {
    return e1?.createdDate == e2?.createdDate && e1?.name == e2?.name;
  }

  @override
  int hash(DistrictsRecord? e) =>
      const ListEquality().hash([e?.createdDate, e?.name]);

  @override
  bool isValidKey(Object? o) => o is DistrictsRecord;
}
