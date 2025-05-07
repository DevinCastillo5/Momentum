import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ExcersiceCall {
  static Future<ApiCallResponse> call({
    String? type = 'stretching',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'excersice',
      apiUrl: 'https://api.api-ninjas.com/v1/exercises',
      callType: ApiCallType.GET,
      headers: {
        'X-Api-Key': 'vPlSUqEB/h3XiwAkvPLiig==uWGUWQgeEfoYNwLN',
      },
      params: {
        'type': type,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? excerciseName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? excersiveType(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? muscle(dynamic response) => (getJsonField(
        response,
        r'''$[:].muscle''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? equipment(dynamic response) => (getJsonField(
        response,
        r'''$[:].equipment''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? difficulty(dynamic response) => (getJsonField(
        response,
        r'''$[:].difficulty''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? instructions(dynamic response) => (getJsonField(
        response,
        r'''$[:].instructions''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetExerciseByNameCall {
  static Future<ApiCallResponse> call({
    String? name = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetExerciseByName',
      apiUrl: 'https://exercisedb.p.rapidapi.com/exercises/name/${name}',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Host': 'exercisedb.p.rapidapi.com',
        'x-rapidapi-key': '3e0c5d34bbmshd2998e1fe775ac8p19a46djsnc7927f504676',
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

  static List<String>? jsonInstructions(dynamic response) => (getJsonField(
        response,
        r'''$[:].instructions''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? jsonName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? jsonGIFUrl(dynamic response) => (getJsonField(
        response,
        r'''$[:].gifUrl''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? jsonEquipment(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].equipment''',
      ));
  static String? jsonTargetMuscles(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].target''',
      ));
  static List<String>? jsonSecondaryTargets(dynamic response) => (getJsonField(
        response,
        r'''$[:].secondaryMuscles''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
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
