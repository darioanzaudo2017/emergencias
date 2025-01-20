// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ApicallbuscarStruct extends FFFirebaseStruct {
  ApicallbuscarStruct({
    int? id,
    String? nombreCompleto,
    String? dni,
    String? direccion,
    String? procedencia,
    String? ultModificacion,
    String? fecha,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nombreCompleto = nombreCompleto,
        _dni = dni,
        _direccion = direccion,
        _procedencia = procedencia,
        _ultModificacion = ultModificacion,
        _fecha = fecha,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "nombreCompleto" field.
  String? _nombreCompleto;
  String get nombreCompleto => _nombreCompleto ?? '';
  set nombreCompleto(String? val) => _nombreCompleto = val;

  bool hasNombreCompleto() => _nombreCompleto != null;

  // "dni" field.
  String? _dni;
  String get dni => _dni ?? '';
  set dni(String? val) => _dni = val;

  bool hasDni() => _dni != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  set direccion(String? val) => _direccion = val;

  bool hasDireccion() => _direccion != null;

  // "procedencia" field.
  String? _procedencia;
  String get procedencia => _procedencia ?? '';
  set procedencia(String? val) => _procedencia = val;

  bool hasProcedencia() => _procedencia != null;

  // "ultModificacion" field.
  String? _ultModificacion;
  String get ultModificacion => _ultModificacion ?? '';
  set ultModificacion(String? val) => _ultModificacion = val;

  bool hasUltModificacion() => _ultModificacion != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  static ApicallbuscarStruct fromMap(Map<String, dynamic> data) =>
      ApicallbuscarStruct(
        id: castToType<int>(data['id']),
        nombreCompleto: data['nombreCompleto'] as String?,
        dni: data['dni'] as String?,
        direccion: data['direccion'] as String?,
        procedencia: data['procedencia'] as String?,
        ultModificacion: data['ultModificacion'] as String?,
        fecha: data['fecha'] as String?,
      );

  static ApicallbuscarStruct? maybeFromMap(dynamic data) => data is Map
      ? ApicallbuscarStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nombreCompleto': _nombreCompleto,
        'dni': _dni,
        'direccion': _direccion,
        'procedencia': _procedencia,
        'ultModificacion': _ultModificacion,
        'fecha': _fecha,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nombreCompleto': serializeParam(
          _nombreCompleto,
          ParamType.String,
        ),
        'dni': serializeParam(
          _dni,
          ParamType.String,
        ),
        'direccion': serializeParam(
          _direccion,
          ParamType.String,
        ),
        'procedencia': serializeParam(
          _procedencia,
          ParamType.String,
        ),
        'ultModificacion': serializeParam(
          _ultModificacion,
          ParamType.String,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
      }.withoutNulls;

  static ApicallbuscarStruct fromSerializableMap(Map<String, dynamic> data) =>
      ApicallbuscarStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nombreCompleto: deserializeParam(
          data['nombreCompleto'],
          ParamType.String,
          false,
        ),
        dni: deserializeParam(
          data['dni'],
          ParamType.String,
          false,
        ),
        direccion: deserializeParam(
          data['direccion'],
          ParamType.String,
          false,
        ),
        procedencia: deserializeParam(
          data['procedencia'],
          ParamType.String,
          false,
        ),
        ultModificacion: deserializeParam(
          data['ultModificacion'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ApicallbuscarStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ApicallbuscarStruct &&
        id == other.id &&
        nombreCompleto == other.nombreCompleto &&
        dni == other.dni &&
        direccion == other.direccion &&
        procedencia == other.procedencia &&
        ultModificacion == other.ultModificacion &&
        fecha == other.fecha;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nombreCompleto,
        dni,
        direccion,
        procedencia,
        ultModificacion,
        fecha
      ]);
}

ApicallbuscarStruct createApicallbuscarStruct({
  int? id,
  String? nombreCompleto,
  String? dni,
  String? direccion,
  String? procedencia,
  String? ultModificacion,
  String? fecha,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ApicallbuscarStruct(
      id: id,
      nombreCompleto: nombreCompleto,
      dni: dni,
      direccion: direccion,
      procedencia: procedencia,
      ultModificacion: ultModificacion,
      fecha: fecha,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ApicallbuscarStruct? updateApicallbuscarStruct(
  ApicallbuscarStruct? apicallbuscar, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    apicallbuscar
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addApicallbuscarStructData(
  Map<String, dynamic> firestoreData,
  ApicallbuscarStruct? apicallbuscar,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (apicallbuscar == null) {
    return;
  }
  if (apicallbuscar.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && apicallbuscar.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final apicallbuscarData =
      getApicallbuscarFirestoreData(apicallbuscar, forFieldValue);
  final nestedData =
      apicallbuscarData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = apicallbuscar.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getApicallbuscarFirestoreData(
  ApicallbuscarStruct? apicallbuscar, [
  bool forFieldValue = false,
]) {
  if (apicallbuscar == null) {
    return {};
  }
  final firestoreData = mapToFirestore(apicallbuscar.toMap());

  // Add any Firestore field values
  apicallbuscar.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getApicallbuscarListFirestoreData(
  List<ApicallbuscarStruct>? apicallbuscars,
) =>
    apicallbuscars
        ?.map((e) => getApicallbuscarFirestoreData(e, true))
        .toList() ??
    [];
