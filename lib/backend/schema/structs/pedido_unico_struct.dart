// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PedidoUnicoStruct extends FFFirebaseStruct {
  PedidoUnicoStruct({
    String? rubro,
    String? necesidad,
    int? cantidad,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _rubro = rubro,
        _necesidad = necesidad,
        _cantidad = cantidad,
        super(firestoreUtilData);

  // "rubro" field.
  String? _rubro;
  String get rubro => _rubro ?? '';
  set rubro(String? val) => _rubro = val;

  bool hasRubro() => _rubro != null;

  // "necesidad" field.
  String? _necesidad;
  String get necesidad => _necesidad ?? '';
  set necesidad(String? val) => _necesidad = val;

  bool hasNecesidad() => _necesidad != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  set cantidad(int? val) => _cantidad = val;

  void incrementCantidad(int amount) => cantidad = cantidad + amount;

  bool hasCantidad() => _cantidad != null;

  static PedidoUnicoStruct fromMap(Map<String, dynamic> data) =>
      PedidoUnicoStruct(
        rubro: data['rubro'] as String?,
        necesidad: data['necesidad'] as String?,
        cantidad: castToType<int>(data['cantidad']),
      );

  static PedidoUnicoStruct? maybeFromMap(dynamic data) => data is Map
      ? PedidoUnicoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'rubro': _rubro,
        'necesidad': _necesidad,
        'cantidad': _cantidad,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'rubro': serializeParam(
          _rubro,
          ParamType.String,
        ),
        'necesidad': serializeParam(
          _necesidad,
          ParamType.String,
        ),
        'cantidad': serializeParam(
          _cantidad,
          ParamType.int,
        ),
      }.withoutNulls;

  static PedidoUnicoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PedidoUnicoStruct(
        rubro: deserializeParam(
          data['rubro'],
          ParamType.String,
          false,
        ),
        necesidad: deserializeParam(
          data['necesidad'],
          ParamType.String,
          false,
        ),
        cantidad: deserializeParam(
          data['cantidad'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PedidoUnicoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PedidoUnicoStruct &&
        rubro == other.rubro &&
        necesidad == other.necesidad &&
        cantidad == other.cantidad;
  }

  @override
  int get hashCode => const ListEquality().hash([rubro, necesidad, cantidad]);
}

PedidoUnicoStruct createPedidoUnicoStruct({
  String? rubro,
  String? necesidad,
  int? cantidad,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PedidoUnicoStruct(
      rubro: rubro,
      necesidad: necesidad,
      cantidad: cantidad,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PedidoUnicoStruct? updatePedidoUnicoStruct(
  PedidoUnicoStruct? pedidoUnico, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pedidoUnico
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPedidoUnicoStructData(
  Map<String, dynamic> firestoreData,
  PedidoUnicoStruct? pedidoUnico,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pedidoUnico == null) {
    return;
  }
  if (pedidoUnico.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pedidoUnico.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pedidoUnicoData =
      getPedidoUnicoFirestoreData(pedidoUnico, forFieldValue);
  final nestedData =
      pedidoUnicoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pedidoUnico.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPedidoUnicoFirestoreData(
  PedidoUnicoStruct? pedidoUnico, [
  bool forFieldValue = false,
]) {
  if (pedidoUnico == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pedidoUnico.toMap());

  // Add any Firestore field values
  pedidoUnico.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPedidoUnicoListFirestoreData(
  List<PedidoUnicoStruct>? pedidoUnicos,
) =>
    pedidoUnicos?.map((e) => getPedidoUnicoFirestoreData(e, true)).toList() ??
    [];
