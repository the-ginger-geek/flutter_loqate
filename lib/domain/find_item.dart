import 'package:json_annotation/json_annotation.dart';

part 'find_item.g.dart';

@JsonSerializable()
class FindItem {
  @JsonKey(name: 'Id')
  final String? id;
  @JsonKey(name: 'Type')
  final String? type;
  @JsonKey(name: 'Text')
  final String? text;
  @JsonKey(name: 'Highlight')
  final String? highlight;
  @JsonKey(name: 'Description')
  final String? description;

  FindItem({
    this.id,
    this.type,
    this.text,
    this.highlight,
    this.description,
  });

  factory FindItem.fromJson(Map<String, dynamic> json) => _$FindItemFromJson(json);

  Map<String, dynamic> toJson() => _$FindItemToJson(this);
}
