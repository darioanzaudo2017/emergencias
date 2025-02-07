import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BuscarpedidosCall {
  static Future<ApiCallResponse> call({
    String? textobuscar = '',
  }) async {
    final ffApiRequestBody = '''
{
  "search_query": "$textobuscar"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Buscarpedidos',
      apiUrl:
          'https://yhzjwpsmhlufcxdaedde.supabase.co/rest/v1/rpc/search_pedidos',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloemp3cHNtaGx1ZmN4ZGFlZGRlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk2OTQ3MjUsImV4cCI6MjA0NTI3MDcyNX0.TZiKBnPM0a8XggUkeDg_kzAUe72UEKy3J-8sCb99X2E',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloemp3cHNtaGx1ZmN4ZGFlZGRlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk2OTQ3MjUsImV4cCI6MjA0NTI3MDcyNX0.TZiKBnPM0a8XggUkeDg_kzAUe72UEKy3J-8sCb99X2E',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static List<String>? nombreCompleto(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombreCompleto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? dni(dynamic response) => (getJsonField(
        response,
        r'''$[:].dni''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? direccion(dynamic response) => (getJsonField(
        response,
        r'''$[:].direccion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? procedencia(dynamic response) => (getJsonField(
        response,
        r'''$[:].procedencia''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ultModificacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].ultModificacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? fecha(dynamic response) => (getJsonField(
        response,
        r'''$[:].fecha''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class VistapedidosCall {
  static Future<ApiCallResponse> call({
    int? idpersona = 3,
  }) async {
    final ffApiRequestBody = '''
{
  "idparameter": $idpersona
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'vistapedidos',
      apiUrl:
          'https://fjxjdojortucrstvlnuy.supabase.co/rest/v1/rpc/pedidosporpersona',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZqeGpkb2pvcnR1Y3JzdHZsbnV5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0MDYwMzQsImV4cCI6MjAyNjk4MjAzNH0.tHnGWdOY59C3O32sVdhlAKOycxTj02ZSZmkT2bvQvwM',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZqeGpkb2pvcnR1Y3JzdHZsbnV5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0MDYwMzQsImV4cCI6MjAyNjk4MjAzNH0.tHnGWdOY59C3O32sVdhlAKOycxTj02ZSZmkT2bvQvwM',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? direccion(dynamic response) => (getJsonField(
        response,
        r'''$[:].direccion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? coordenadas(dynamic response) => (getJsonField(
        response,
        r'''$[:].coordenadas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? telefono(dynamic response) => (getJsonField(
        response,
        r'''$[:].telefono''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? dedonde(dynamic response) => (getJsonField(
        response,
        r'''$[:].de_donde''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? aquienlepidieron(dynamic response) => getJsonField(
        response,
        r'''$[:].a_quien_le_pidieron''',
        true,
      ) as List?;
  static List<String>? observaciones(dynamic response) => (getJsonField(
        response,
        r'''$[:].observaciones''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? idpersona(dynamic response) => (getJsonField(
        response,
        r'''$[:].idpersona''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? dni(dynamic response) => (getJsonField(
        response,
        r'''$[:].dni''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? apellido(dynamic response) => (getJsonField(
        response,
        r'''$[:].apellido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$[:].nombre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? progresbar(dynamic response) => (getJsonField(
        response,
        r'''$[:].progresbar''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class ListaPorPedidosCall {
  static Future<ApiCallResponse> call({
    int? iddelpedido = 5555557,
  }) async {
    final ffApiRequestBody = '''
{
  "idparameterpedido": $iddelpedido
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'lista por pedidos',
      apiUrl:
          'https://fjxjdojortucrstvlnuy.supabase.co/rest/v1/rpc/obtener_pedidos_unicos',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZqeGpkb2pvcnR1Y3JzdHZsbnV5Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcxMTQwNjAzNCwiZXhwIjoyMDI2OTgyMDM0fQ.7L4YgDbKKrua1_IrFuJa7ni5cTBH5SnicuK60FuYtbg',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZqeGpkb2pvcnR1Y3JzdHZsbnV5Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcxMTQwNjAzNCwiZXhwIjoyMDI2OTgyMDM0fQ.7L4YgDbKKrua1_IrFuJa7ni5cTBH5SnicuK60FuYtbg',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReadpedidosunicosCall {
  static Future<ApiCallResponse> call({
    int? id = 103,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'readpedidosunicos',
      apiUrl:
          'https://yhzjwpsmhlufcxdaedde.supabase.co/rest/v1/DetalledePedido?idPedido=eq.$id&select=*\'',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloemp3cHNtaGx1ZmN4ZGFlZGRlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk2OTQ3MjUsImV4cCI6MjA0NTI3MDcyNX0.TZiKBnPM0a8XggUkeDg_kzAUe72UEKy3J-8sCb99X2E',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloemp3cHNtaGx1ZmN4ZGFlZGRlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk2OTQ3MjUsImV4cCI6MjA0NTI3MDcyNX0.TZiKBnPM0a8XggUkeDg_kzAUe72UEKy3J-8sCb99X2E',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? rubro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].rubro''',
      ));
  static String? necesidad(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].necesidad''',
      ));
  static int? cantidad(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].cantidad''',
      ));
  static int? idPedido(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].idPedido''',
      ));
}

class BuscarpersonaCall {
  static Future<ApiCallResponse> call({
    String? buscar = '41',
  }) async {
    final ffApiRequestBody = '''
{
  "palabra_clave": "${escapeStringForJson(buscar)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'buscarpersona',
      apiUrl:
          'https://yhzjwpsmhlufcxdaedde.supabase.co/rest/v1/rpc/buscar_persona',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloemp3cHNtaGx1ZmN4ZGFlZGRlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk2OTQ3MjUsImV4cCI6MjA0NTI3MDcyNX0.TZiKBnPM0a8XggUkeDg_kzAUe72UEKy3J-8sCb99X2E',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloemp3cHNtaGx1ZmN4ZGFlZGRlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk2OTQ3MjUsImV4cCI6MjA0NTI3MDcyNX0.TZiKBnPM0a8XggUkeDg_kzAUe72UEKy3J-8sCb99X2E',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarPorEstadoCall {
  static Future<ApiCallResponse> call({
    String? buscar = 'Gerardo',
    String? estado = 'Para Asignar',
  }) async {
    final ffApiRequestBody = '''
{
  "estado_imput": "${escapeStringForJson(buscar)}",
  "palabra_clave": "${escapeStringForJson(estado)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'buscar por estado',
      apiUrl:
          'https://yhzjwpsmhlufcxdaedde.supabase.co/rest/v1/rpc/buscar_asignado2',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloemp3cHNtaGx1ZmN4ZGFlZGRlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk2OTQ3MjUsImV4cCI6MjA0NTI3MDcyNX0.TZiKBnPM0a8XggUkeDg_kzAUe72UEKy3J-8sCb99X2E',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloemp3cHNtaGx1ZmN4ZGFlZGRlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk2OTQ3MjUsImV4cCI6MjA0NTI3MDcyNX0.TZiKBnPM0a8XggUkeDg_kzAUe72UEKy3J-8sCb99X2E',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? barrio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].barrio''',
      ));
  static String? direccion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].direccion''',
      ));
  static String? observaciones(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].observaciones''',
      ));
  static String? telefono(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].telefono''',
      ));
  static String? nombreCompleto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].nombreCompleto''',
      ));
  static String? dni(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].dni''',
      ));
}

class DireccionCatastroCall {
  static Future<ApiCallResponse> call({
    String? token =
        'kk7cwRzflXKSU3kbLbuA-ySyQto8kvxRlbXFD1KUDV2uZVrMkHj-xFOxnCfVFguoyYLpLBShicc-FPIVX6FzgWzDyyl8OmPns7E1q2G6eAFT_YDSjm_pSxvu8wsJjT7tfBf8NB_VX8MwIdVNJWMbxo3_fVUtsGAd9RaCSm_L6vkDrZSQN02VZaZ9HvCoD2goTy357JYL3XZbi-xVjJ7TCCcHTzwOTkACEbSo-T1Y5OI.',
    String? calle = 'SAN MARTIN 42 - CENTRO',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'direccionCatastro',
      apiUrl:
          'https://gis.cordoba.gob.ar/server/rest/services/Catastro/catastro_integra_api/FeatureServer/22/query',
      callType: ApiCallType.POST,
      headers: {
        'username': 'politicas.sociales.api',
        'password': 'PsocialesAPI2024#',
        'referer': 'https://inteligenciaterritorial.cordoba.gob.ar/portal',
        'expiration': '60',
        'f': 'json',
      },
      params: {
        'token': "$token",
        'where': "direccioncompleta=\'$calle\'",
        'outFields': "*",
        'j': "json",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? direccioncompleta(dynamic response) => (getJsonField(
        response,
        r'''$.features[:].attributes.direccioncompleta''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? reloid(dynamic response) => (getJsonField(
        response,
        r'''$.features[:].attributes.reloid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? numeracion(dynamic response) => (getJsonField(
        response,
        r'''$.features[:].attributes.numeracion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? idunidad(dynamic response) => (getJsonField(
        response,
        r'''$.features[:].attributes.idunidad''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class PedirtokencatastroCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'pedirtokencatastro',
      apiUrl:
          'https://inteligenciaterritorial.cordoba.gob.ar/portal/sharing/rest/generateToken',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': "politicas.sociales.api",
        'password': "PsocialesAPI2024#",
        'referer': "https://inteligenciaterritorial.cordoba.gob.ar/portal",
        'expiration': 60,
        'f': "json",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
