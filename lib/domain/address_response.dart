import 'address.dart';

class AddressResponse {
  final List<AddressDetails> addresses;

  AddressResponse(this.addresses);

  factory AddressResponse.fromJson(List<dynamic> json) {
    List<AddressDetails> addresses = [];
    for (var item in json) {
      addresses.add(AddressDetails.fromJson(item));
    }

    return AddressResponse(addresses);
  }
}
