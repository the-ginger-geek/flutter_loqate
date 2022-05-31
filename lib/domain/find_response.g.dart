// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindResponse _$FindResponseFromJson(Map<String, dynamic> json) => FindResponse(
      (json['Items'] as List<dynamic>)
          .map((e) => FindItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FindResponseToJson(FindResponse instance) =>
    <String, dynamic>{
      'Items': instance.searchItems,
    };
