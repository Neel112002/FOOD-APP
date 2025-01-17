import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "resturantRef" field.
  DocumentReference? _resturantRef;
  DocumentReference? get resturantRef => _resturantRef;
  bool hasResturantRef() => _resturantRef != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _resturantRef = snapshotData['resturantRef'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _status = snapshotData['status'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('orders')
          : FirebaseFirestore.instance.collectionGroup('orders');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('orders').doc(id);

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference? resturantRef,
  DateTime? timestamp,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'resturantRef': resturantRef,
      'timestamp': timestamp,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.resturantRef == e2?.resturantRef &&
        e1?.timestamp == e2?.timestamp &&
        e1?.status == e2?.status;
  }

  @override
  int hash(OrdersRecord? e) =>
      const ListEquality().hash([e?.resturantRef, e?.timestamp, e?.status]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
