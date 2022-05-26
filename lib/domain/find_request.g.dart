// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindRequest _$FindRequestFromJson(Map<String, dynamic> json) => FindRequest(
      addressString: json['Text'] as String,
      isMiddleware: json['IsMiddleware'] as bool?,
      countries: (json['Countries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      container: json['Container'] as String?,
      language: json['Language'] as String?,
      geofence: json['Geofence'] as String?,
      filters: json['Filters'] as String?,
      origin: json['Origin'] as String?,
      limit: json['Limit'] as int?,
      bias: json['Bias'] as bool?,
    );

Map<String, dynamic> _$FindRequestToJson(FindRequest instance) {
  final val = <String, dynamic>{
    'Text': instance.addressString,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Origin', instance.origin);
  writeNotNull('Container', instance.container);
  writeNotNull('Language', instance.language);
  writeNotNull('Filters', instance.filters);
  writeNotNull('Geofence', instance.geofence);
  writeNotNull('Countries', instance.countries);
  writeNotNull('Limit', instance.limit);
  writeNotNull('Bias', instance.bias);
  writeNotNull('IsMiddleware', instance.isMiddleware);
  return val;
}
