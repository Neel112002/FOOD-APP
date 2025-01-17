import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResturantsRecord extends FirestoreRecord {
  ResturantsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _category = snapshotData['category'] as String?;
    _address = snapshotData['address'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resturants');

  static Stream<ResturantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResturantsRecord.fromSnapshot(s));

  static Future<ResturantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResturantsRecord.fromSnapshot(s));

  static ResturantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResturantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResturantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResturantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResturantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResturantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResturantsRecordData({
  String? name,
  String? category,
  String? address,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'category': category,
      'address': address,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResturantsRecordDocumentEquality implements Equality<ResturantsRecord> {
  const ResturantsRecordDocumentEquality();

  @override
  bool equals(ResturantsRecord? e1, ResturantsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.category == e2?.category &&
        e1?.address == e2?.address &&
        e1?.image == e2?.image;
  }

  @override
  int hash(ResturantsRecord? e) =>
      const ListEquality().hash([e?.name, e?.category, e?.address, e?.image]);

  @override
  bool isValidKey(Object? o) => o is ResturantsRecord;
}
