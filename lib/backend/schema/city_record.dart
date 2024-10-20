import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CityRecord extends FirestoreRecord {
  CityRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "City_Name" field.
  List<String>? _cityName;
  List<String> get cityName => _cityName ?? const [];
  bool hasCityName() => _cityName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _cityName = getDataList(snapshotData['City_Name']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('City')
          : FirebaseFirestore.instance.collectionGroup('City');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('City').doc(id);

  static Stream<CityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CityRecord.fromSnapshot(s));

  static Future<CityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CityRecord.fromSnapshot(s));

  static CityRecord fromSnapshot(DocumentSnapshot snapshot) => CityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCityRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class CityRecordDocumentEquality implements Equality<CityRecord> {
  const CityRecordDocumentEquality();

  @override
  bool equals(CityRecord? e1, CityRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.cityName, e2?.cityName);
  }

  @override
  int hash(CityRecord? e) => const ListEquality().hash([e?.cityName]);

  @override
  bool isValidKey(Object? o) => o is CityRecord;
}
