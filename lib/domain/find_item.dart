import 'package:json_annotation/json_annotation.dart';

part 'find_item.g.dart';

@JsonSerializable()
class FindItem {
  final String? id;
  final String? type;
  final String? text;
  final String? highlight;
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
