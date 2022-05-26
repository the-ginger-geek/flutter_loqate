import 'address.dart';

class RetrieveResponse {
  final List<Address> addresses;

  RetrieveResponse(this.addresses);

  factory RetrieveResponse.fromJson(List<dynamic> json) {
    List<Address> addresses = [];
    for (var item in json) {
      addresses.add(Address.fromJson(item));
    }

    return RetrieveResponse(addresses);
  }
}
