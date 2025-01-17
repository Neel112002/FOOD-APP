import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuitemsRecord extends FirestoreRecord {
  MenuitemsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<int>(snapshotData['price']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('menuitems')
          : FirebaseFirestore.instance.collectionGroup('menuitems');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('menuitems').doc(id);

  static Stream<MenuitemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuitemsRecord.fromSnapshot(s));

  static Future<MenuitemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuitemsRecord.fromSnapshot(s));

  static MenuitemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MenuitemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuitemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuitemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuitemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuitemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuitemsRecordData({
  String? name,
  int? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuitemsRecordDocumentEquality implements Equality<MenuitemsRecord> {
  const MenuitemsRecordDocumentEquality();

  @override
  bool equals(MenuitemsRecord? e1, MenuitemsRecord? e2) {
    return e1?.name == e2?.name && e1?.price == e2?.price;
  }

  @override
  int hash(MenuitemsRecord? e) =>
      const ListEquality().hash([e?.name, e?.price]);

  @override
  bool isValidKey(Object? o) => o is MenuitemsRecord;
}
