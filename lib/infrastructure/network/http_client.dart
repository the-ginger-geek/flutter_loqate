import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../logging/logger.dart';

typedef RequestInterceptor = Map<String, String> Function(Map<String, String> headers);

class Client {
  final String baseUrl;
  final http.Client httpClient;
  final int _connectionTimeOut = 60000;
  final bool encodeJson;
  final Map<String, String> defaultHeaders;
  final RequestInterceptor? interceptor;

  Client({
    required this.baseUrl,
    required this.httpClient,
    this.defaultHeaders = const {},
    this.encodeJson = false,
    this.interceptor,
  });

  dynamic get({
    required String endpoint,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final resolvedUrl = _addQueryParameters('$baseUrl$endpoint', queryParameters);
    final uri = Uri.parse(Uri.encodeFull(resolvedUrl));
    final requestHeaders = _populateHeaders(defaultHeaders, headers);

    final response = await _makeTimedRequest(() => httpClient
        .get(uri, headers: requestHeaders)
        .timeout(Duration(milliseconds: _connectionTimeOut), onTimeout: () => _handleTimeout(resolvedUrl)));
    return response;
  }

  dynamic post({
    required String endpoint,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    dynamic body,
  }) async {
    final resolvedUrl = _addQueryParameters('$baseUrl$endpoint', queryParameters);
    final uri = Uri.parse(Uri.encodeFull(resolvedUrl));
    final requestHeaders = _populateHeaders(defaultHeaders, headers);
    final message = encodeJson ? body : jsonEncode(body);

    final response = await _makeTimedRequest(() => httpClient
        .post(uri, headers: requestHeaders, body: message)
        .timeout(Duration(milliseconds: _connectionTimeOut), onTimeout: () => _handleTimeout(resolvedUrl)));
    return response;
  }

  dynamic patch({
    required String endpoint,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    dynamic body,
  }) async {
    final resolvedUrl = _addQueryParameters('$baseUrl$endpoint', queryParameters);
    final uri = Uri.parse(Uri.encodeFull(resolvedUrl));
    final requestHeaders = _populateHeaders(defaultHeaders, headers);
    final message = encodeJson ? body : jsonEncode(body);

    final response = await _makeTimedRequest(() => httpClient
        .patch(uri, headers: requestHeaders, body: message)
        .timeout(Duration(milliseconds: _connectionTimeOut), onTimeout: () => _handleTimeout(resolvedUrl)));
    return response;
  }

  dynamic delete({
    required String endpoint,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    dynamic body,
  }) async {
    final resolvedUrl = _addQueryParameters('$baseUrl$endpoint', queryParameters);
    final uri = Uri.parse(Uri.encodeFull(resolvedUrl));
    final requestHeaders = _populateHeaders(defaultHeaders, headers);
    final message = encodeJson ? body : jsonEncode(body);

    final response = await _makeTimedRequest(() => httpClient
        .delete(uri, headers: requestHeaders, body: message)
        .timeout(Duration(milliseconds: _connectionTimeOut), onTimeout: () => _handleTimeout(resolvedUrl)));
    return response;
  }

  Map<String, String> _populateHeaders(Map<String, String> standardHeaders, Map<String, String>? endpointHeaders) {
    Map<String, String> headers = {'Content-Type': 'application/json'};
    headers.addAll(standardHeaders);

    endpointHeaders?.forEach((key, value) {
      if (key.isNotEmpty && value.isNotEmpty) {
        headers[key] = value;
      }
    });

    headers = interceptor?.call(headers) ?? headers;

    return headers;
  }

  String _addQueryParameters(String baseUrl, Map<String, dynamic>? queryParameters) {
    if (queryParameters != null && queryParameters.isNotEmpty == true) {
      StringBuffer parametersBuffer = StringBuffer();
      queryParameters.forEach((key, value) {
        if (value != null) {
          if (parametersBuffer.length > 0) {
            parametersBuffer.write('&');
          }
          if (value is String && value.isNotEmpty) {
            parametersBuffer.write('$key=$value');
          } else if (value is List) {
            for (int i = 0; i < value.length; i++) {
              final parameter = value[i];
              parametersBuffer.write('$key=$parameter');
              if (i < value.length - 1) {
                parametersBuffer.write('&');
              }
            }
          } else {
            parametersBuffer.write('$key=$value');
          }
        }
      });

      return baseUrl + '?' + parametersBuffer.toString();
    }

    return baseUrl;
  }

  dynamic _makeTimedRequest(Function request) async {
    final requestStart = DateTime.now().millisecondsSinceEpoch;
    final http.Response response = await request();
    final requestEnd = DateTime.now().millisecondsSinceEpoch;
    final uri = response.request?.url ?? '';
    final method = response.request?.method.toUpperCase() ?? '';

    _printRequest('#$method ${requestEnd - requestStart}ms << [$uri]', response.body, response.request?.headers ?? {});

    return _returnValidResponse(response);
  }

  dynamic _returnValidResponse(http.Response response) {
    if (response.body.isNotEmpty) {
      final result = json.decode(response.body);
      Log.debug(toString(), 'RESULT $result');
      return result;
    }

    return {};
  }

  FutureOr<Response> _handleTimeout(String resolvedUrl) {
    _printMessage('Request [$resolvedUrl] timed out after $_connectionTimeOut');
    throw TimeoutException('Request failed please try again');
  }

  void _printRequest(String message, String body, Map<String, String> headers) {
    Log.debug(toString(), '-------------------- REQUEST --------------------');
    StringBuffer buffer = StringBuffer();
    buffer.writeln(message);
    headers.forEach((key, value) {
      buffer.writeln('HEADER - {"$key": "$value"}');
    });
    buffer.writeln('BODY [$body]');
    Log.debug(toString(), buffer.toString());
    Log.debug(toString(), '------------------ END REQUEST ------------------');
  }

  void _printMessage(String message) {
    Log.debug(toString(), message);
  }
}
