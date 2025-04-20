// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PlaceStruct extends FFFirebaseStruct {
  PlaceStruct({
    String? direcciones,
    String? direcciones2,
    String? idplace,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _direcciones = direcciones,
        _direcciones2 = direcciones2,
        _idplace = idplace,
        super(firestoreUtilData);

  // "direcciones" field.
  String? _direcciones;
  String get direcciones => _direcciones ?? '';
  set direcciones(String? val) => _direcciones = val;

  bool hasDirecciones() => _direcciones != null;

  // "direcciones2" field.
  String? _direcciones2;
  String get direcciones2 => _direcciones2 ?? '';
  set direcciones2(String? val) => _direcciones2 = val;

  bool hasDirecciones2() => _direcciones2 != null;

  // "idplace" field.
  String? _idplace;
  String get idplace => _idplace ?? '';
  set idplace(String? val) => _idplace = val;

  bool hasIdplace() => _idplace != null;

  static PlaceStruct fromMap(Map<String, dynamic> data) => PlaceStruct(
        direcciones: data['direcciones'] as String?,
        direcciones2: data['direcciones2'] as String?,
        idplace: data['idplace'] as String?,
      );

  static PlaceStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlaceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'direcciones': _direcciones,
        'direcciones2': _direcciones2,
        'idplace': _idplace,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'direcciones': serializeParam(
          _direcciones,
          ParamType.String,
        ),
        'direcciones2': serializeParam(
          _direcciones2,
          ParamType.String,
        ),
        'idplace': serializeParam(
          _idplace,
          ParamType.String,
        ),
      }.withoutNulls;

  static PlaceStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlaceStruct(
        direcciones: deserializeParam(
          data['direcciones'],
          ParamType.String,
          false,
        ),
        direcciones2: deserializeParam(
          data['direcciones2'],
          ParamType.String,
          false,
        ),
        idplace: deserializeParam(
          data['idplace'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PlaceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlaceStruct &&
        direcciones == other.direcciones &&
        direcciones2 == other.direcciones2 &&
        idplace == other.idplace;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([direcciones, direcciones2, idplace]);
}

PlaceStruct createPlaceStruct({
  String? direcciones,
  String? direcciones2,
  String? idplace,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlaceStruct(
      direcciones: direcciones,
      direcciones2: direcciones2,
      idplace: idplace,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlaceStruct? updatePlaceStruct(
  PlaceStruct? place, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    place
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlaceStructData(
  Map<String, dynamic> firestoreData,
  PlaceStruct? place,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (place == null) {
    return;
  }
  if (place.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && place.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final placeData = getPlaceFirestoreData(place, forFieldValue);
  final nestedData = placeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = place.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlaceFirestoreData(
  PlaceStruct? place, [
  bool forFieldValue = false,
]) {
  if (place == null) {
    return {};
  }
  final firestoreData = mapToFirestore(place.toMap());

  // Add any Firestore field values
  place.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlaceListFirestoreData(
  List<PlaceStruct>? places,
) =>
    places?.map((e) => getPlaceFirestoreData(e, true)).toList() ?? [];
