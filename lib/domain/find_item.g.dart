// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindItem _$FindItemFromJson(Map<String, dynamic> json) => FindItem(
      id: json['Id'] as String?,
      type: json['Type'] as String?,
      text: json['Text'] as String?,
      highlight: json['Highlight'] as String?,
      description: json['Description'] as String?,
    );

Map<String, dynamic> _$FindItemToJson(FindItem instance) => <String, dynamic>{
      'Id': instance.id,
      'Type': instance.type,
      'Text': instance.text,
      'Highlight': instance.highlight,
      'Description': instance.description,
    };
