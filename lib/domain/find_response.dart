import 'package:json_annotation/json_annotation.dart';

import 'find_item.dart';

part 'find_response.g.dart';

@JsonSerializable()
class FindResponse {
  @JsonKey(name: 'Items')
  List<FindItem> searchItems;

  FindResponse(this.searchItems);

  factory FindResponse.fromJson(Map<String, dynamic> json) => _$FindResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FindResponseToJson(this);
}
