library loqate;

import 'domain/find_request.dart';
import 'domain/address.dart';
import 'domain/retrieve_request.dart';
import 'domain/find_item.dart';
import 'infrastructure/network/repository.dart';

/// Global Address Validation Platform
///
/// Run from multiple global locations, this platform provides low
/// latency performance and high availability wherever you operate in the world.
class Loqate {
  late final Repository repository;

  /// The key used to authenticate with the service.
  final String apiKey;

  Loqate({
    required this.apiKey,
  }) {
    repository = Repository(apiKey);
  }

  /// Uses a text search to find addresses and places.
  ///
  /// Note this does not return formatted addresses, and repeated
  /// calls to this service may be required to drill-down through
  /// results until an address ID is returned. The address ID should
  /// then be passed into the [retrieve] method to obtain a fully
  /// formatted address.
  Future<List<FindItem>> find(FindRequest findRequest) async {
    return await repository.findAddresses(findRequest);
  }

  /// Returns the full address details based on the Id.
  Future<List<Address>> retrieve(RetrieveRequest retrieveRequest) async {
    return await repository.retrieveAddresses(retrieveRequest);
  }
}
