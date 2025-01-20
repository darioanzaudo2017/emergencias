// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PedidosPorPersonaStruct extends FFFirebaseStruct {
  PedidosPorPersonaStruct({
    int? id,
    String? rubro,
    String? necesidad,
    int? cantidad,
    String? observaciones,
    int? idPedido,
    int? idPersona,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _rubro = rubro,
        _necesidad = necesidad,
        _cantidad = cantidad,
        _observaciones = observaciones,
        _idPedido = idPedido,
        _idPersona = idPersona,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

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

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  set observaciones(String? val) => _observaciones = val;

  bool hasObservaciones() => _observaciones != null;

  // "idPedido" field.
  int? _idPedido;
  int get idPedido => _idPedido ?? 0;
  set idPedido(int? val) => _idPedido = val;

  void incrementIdPedido(int amount) => idPedido = idPedido + amount;

  bool hasIdPedido() => _idPedido != null;

  // "idPersona" field.
  int? _idPersona;
  int get idPersona => _idPersona ?? 0;
  set idPersona(int? val) => _idPersona = val;

  void incrementIdPersona(int amount) => idPersona = idPersona + amount;

  bool hasIdPersona() => _idPersona != null;

  static PedidosPorPersonaStruct fromMap(Map<String, dynamic> data) =>
      PedidosPorPersonaStruct(
        id: castToType<int>(data['id']),
        rubro: data['rubro'] as String?,
        necesidad: data['necesidad'] as String?,
        cantidad: castToType<int>(data['cantidad']),
        observaciones: data['observaciones'] as String?,
        idPedido: castToType<int>(data['idPedido']),
        idPersona: castToType<int>(data['idPersona']),
      );

  static PedidosPorPersonaStruct? maybeFromMap(dynamic data) => data is Map
      ? PedidosPorPersonaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'rubro': _rubro,
        'necesidad': _necesidad,
        'cantidad': _cantidad,
        'observaciones': _observaciones,
        'idPedido': _idPedido,
        'idPersona': _idPersona,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
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
        'observaciones': serializeParam(
          _observaciones,
          ParamType.String,
        ),
        'idPedido': serializeParam(
          _idPedido,
          ParamType.int,
        ),
        'idPersona': serializeParam(
          _idPersona,
          ParamType.int,
        ),
      }.withoutNulls;

  static PedidosPorPersonaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PedidosPorPersonaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
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
        observaciones: deserializeParam(
          data['observaciones'],
          ParamType.String,
          false,
        ),
        idPedido: deserializeParam(
          data['idPedido'],
          ParamType.int,
          false,
        ),
        idPersona: deserializeParam(
          data['idPersona'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PedidosPorPersonaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PedidosPorPersonaStruct &&
        id == other.id &&
        rubro == other.rubro &&
        necesidad == other.necesidad &&
        cantidad == other.cantidad &&
        observaciones == other.observaciones &&
        idPedido == other.idPedido &&
        idPersona == other.idPersona;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, rubro, necesidad, cantidad, observaciones, idPedido, idPersona]);
}

PedidosPorPersonaStruct createPedidosPorPersonaStruct({
  int? id,
  String? rubro,
  String? necesidad,
  int? cantidad,
  String? observaciones,
  int? idPedido,
  int? idPersona,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PedidosPorPersonaStruct(
      id: id,
      rubro: rubro,
      necesidad: necesidad,
      cantidad: cantidad,
      observaciones: observaciones,
      idPedido: idPedido,
      idPersona: idPersona,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PedidosPorPersonaStruct? updatePedidosPorPersonaStruct(
  PedidosPorPersonaStruct? pedidosPorPersona, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pedidosPorPersona
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPedidosPorPersonaStructData(
  Map<String, dynamic> firestoreData,
  PedidosPorPersonaStruct? pedidosPorPersona,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pedidosPorPersona == null) {
    return;
  }
  if (pedidosPorPersona.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pedidosPorPersona.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pedidosPorPersonaData =
      getPedidosPorPersonaFirestoreData(pedidosPorPersona, forFieldValue);
  final nestedData =
      pedidosPorPersonaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pedidosPorPersona.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPedidosPorPersonaFirestoreData(
  PedidosPorPersonaStruct? pedidosPorPersona, [
  bool forFieldValue = false,
]) {
  if (pedidosPorPersona == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pedidosPorPersona.toMap());

  // Add any Firestore field values
  pedidosPorPersona.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPedidosPorPersonaListFirestoreData(
  List<PedidosPorPersonaStruct>? pedidosPorPersonas,
) =>
    pedidosPorPersonas
        ?.map((e) => getPedidosPorPersonaFirestoreData(e, true))
        .toList() ??
    [];
