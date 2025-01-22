// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CartItemTypeStruct extends FFFirebaseStruct {
  CartItemTypeStruct({
    DocumentReference? menuItemRef,
    int? quantity,
    String? specialInstructions,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _menuItemRef = menuItemRef,
        _quantity = quantity,
        _specialInstructions = specialInstructions,
        super(firestoreUtilData);

  // "menuItemRef" field.
  DocumentReference? _menuItemRef;
  DocumentReference? get menuItemRef => _menuItemRef;
  set menuItemRef(DocumentReference? val) => _menuItemRef = val;

  bool hasMenuItemRef() => _menuItemRef != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "specialInstructions" field.
  String? _specialInstructions;
  String get specialInstructions => _specialInstructions ?? '';
  set specialInstructions(String? val) => _specialInstructions = val;

  bool hasSpecialInstructions() => _specialInstructions != null;

  static CartItemTypeStruct fromMap(Map<String, dynamic> data) =>
      CartItemTypeStruct(
        menuItemRef: data['menuItemRef'] as DocumentReference?,
        quantity: castToType<int>(data['quantity']),
        specialInstructions: data['specialInstructions'] as String?,
      );

  static CartItemTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? CartItemTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'menuItemRef': _menuItemRef,
        'quantity': _quantity,
        'specialInstructions': _specialInstructions,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'menuItemRef': serializeParam(
          _menuItemRef,
          ParamType.DocumentReference,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'specialInstructions': serializeParam(
          _specialInstructions,
          ParamType.String,
        ),
      }.withoutNulls;

  static CartItemTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartItemTypeStruct(
        menuItemRef: deserializeParam(
          data['menuItemRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['resturants', 'menuitems'],
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        specialInstructions: deserializeParam(
          data['specialInstructions'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CartItemTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartItemTypeStruct &&
        menuItemRef == other.menuItemRef &&
        quantity == other.quantity &&
        specialInstructions == other.specialInstructions;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([menuItemRef, quantity, specialInstructions]);
}

CartItemTypeStruct createCartItemTypeStruct({
  DocumentReference? menuItemRef,
  int? quantity,
  String? specialInstructions,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartItemTypeStruct(
      menuItemRef: menuItemRef,
      quantity: quantity,
      specialInstructions: specialInstructions,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartItemTypeStruct? updateCartItemTypeStruct(
  CartItemTypeStruct? cartItemType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartItemType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartItemTypeStructData(
  Map<String, dynamic> firestoreData,
  CartItemTypeStruct? cartItemType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartItemType == null) {
    return;
  }
  if (cartItemType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cartItemType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartItemTypeData =
      getCartItemTypeFirestoreData(cartItemType, forFieldValue);
  final nestedData =
      cartItemTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cartItemType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartItemTypeFirestoreData(
  CartItemTypeStruct? cartItemType, [
  bool forFieldValue = false,
]) {
  if (cartItemType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartItemType.toMap());

  // Add any Firestore field values
  cartItemType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartItemTypeListFirestoreData(
  List<CartItemTypeStruct>? cartItemTypes,
) =>
    cartItemTypes?.map((e) => getCartItemTypeFirestoreData(e, true)).toList() ??
    [];
