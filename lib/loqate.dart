library loqate;

import 'domain/find_request.dart';
import 'domain/address.dart';
import 'domain/retrieve_request.dart';
import 'domain/search_item.dart';
import 'infrastructure/network/repository.dart';

/// A Address Resolver.
class Loqate {
  late final Repository repository;

  /// The key used to authenticate with the service.
  final String apiKey;

  ///	Whether the API is being called from a middleware implementation (and
  ///therefore the calling IP address should not be used for biasing).
  final bool? isMiddleware;

  Loqate({
    required this.apiKey,
    this.isMiddleware,
  }) {
    repository = Repository(apiKey);
  }

  Future<List<AddressItem>> find(FindRequest findRequest) async {
    return await repository.findAddresses(findRequest);
  }

  Future<List<AddressDetails>> retrieve(RetrieveRequest retrieveRequest) async {
    return await repository.retrieveAddresses(retrieveRequest);
  }
}
