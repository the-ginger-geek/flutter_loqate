// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressItem _$AddressItemFromJson(Map<String, dynamic> json) => AddressItem(
      id: json['id'] as String?,
      type: json['type'] as String?,
      text: json['text'] as String?,
      highlight: json['highlight'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$AddressItemToJson(AddressItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'text': instance.text,
      'highlight': instance.highlight,
      'description': instance.description,
    };
