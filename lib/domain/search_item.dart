import 'package:json_annotation/json_annotation.dart';

part 'search_item.g.dart';

@JsonSerializable()
class AddressItem {
  final String? id;
  final String? type;
  final String? text;
  final String? highlight;
  final String? description;

  AddressItem({
    this.id,
    this.type,
    this.text,
    this.highlight,
    this.description,
  });

  factory AddressItem.fromJson(Map<String, dynamic> json) => _$AddressItemFromJson(json);

  Map<String, dynamic> toJson() => _$AddressItemToJson(this);
}
