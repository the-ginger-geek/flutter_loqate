// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveResponse _$RetrieveResponseFromJson(Map<String, dynamic> json) =>
    RetrieveResponse(
      (json['Items'] as List<dynamic>)
          .map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveResponseToJson(RetrieveResponse instance) =>
    <String, dynamic>{
      'Items': instance.addresses,
    };
