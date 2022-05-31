import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'retrieve_response.g.dart';

@JsonSerializable()
class RetrieveResponse {
  @JsonKey(name: 'Items')
  final List<Address> addresses;

  RetrieveResponse(this.addresses);

  factory RetrieveResponse.fromJson(Map<String, dynamic> json) => _$RetrieveResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RetrieveResponseToJson(this);
}
