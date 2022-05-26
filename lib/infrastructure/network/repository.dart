import 'dart:io';

import 'package:http/io_client.dart';
import '../../constants/api_constants.dart';
import '../../domain/address.dart';
import '../../domain/address_response.dart';
import '../../domain/retrieve_request.dart';
import '../../domain/search_item.dart';
import '../../domain/find_request.dart';
import '../../domain/search_response.dart';
import 'http_client.dart';

class Repository {
  final String apiKey;

  Repository(this.apiKey);

  Client get _httpClient => Client(baseUrl: ApiConstants.baseUrl, httpClient: IOClient(HttpClient()));

  Future<List<AddressItem>> findAddresses(FindRequest searchRequest) async {
    return SearchResponse.fromJson(await _httpClient.get(
      endpoint: ApiConstants.find,
      queryParameters: searchRequest.toJson()..addAll({'Key': apiKey}),
    )).searchItems;
  }

  Future<List<AddressDetails>> retrieveAddresses(RetrieveRequest retrieveRequest) async {
    return AddressResponse.fromJson(await _httpClient.get(
      endpoint: ApiConstants.retrieve,
      queryParameters: retrieveRequest.toJson()..addAll({'Key': apiKey}),
    )).addresses;
  }
}
