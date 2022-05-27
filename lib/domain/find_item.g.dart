// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindItem _$FindItemFromJson(Map<String, dynamic> json) => FindItem(
      id: json['id'] as String?,
      type: json['type'] as String?,
      text: json['text'] as String?,
      highlight: json['highlight'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$FindItemToJson(FindItem instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'text': instance.text,
      'highlight': instance.highlight,
      'description': instance.description,
    };
