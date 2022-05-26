// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveRequest _$RetrieveRequestFromJson(Map<String, dynamic> json) =>
    RetrieveRequest(
      id: json['Id'] as String?,
      field1Format: json['Field1Format'] as String?,
      field2Format: json['Field2Format'] as String?,
      field3Format: json['Field3Format'] as String?,
      field4Format: json['Field4Format'] as String?,
      field5Format: json['Field5Format'] as String?,
      field6Format: json['Field6Format'] as String?,
      field7Format: json['Field7Format'] as String?,
      field8Format: json['Field8Format'] as String?,
      field9Format: json['Field9Format'] as String?,
      field10Format: json['Field10Format'] as String?,
      field11Format: json['Field11Format'] as String?,
      field12Format: json['Field12Format'] as String?,
      field13Format: json['Field13Format'] as String?,
      field14Format: json['Field14Format'] as String?,
      field15Format: json['Field15Format'] as String?,
      field16Format: json['Field16Format'] as String?,
      field17Format: json['Field17Format'] as String?,
      field18Format: json['Field18Format'] as String?,
      field19Format: json['Field19Format'] as String?,
      field20Format: json['Field20Format'] as String?,
    );

Map<String, dynamic> _$RetrieveRequestToJson(RetrieveRequest instance) {
  final val = <String, dynamic>{
    'Id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Field1Format', instance.field1Format);
  writeNotNull('Field2Format', instance.field2Format);
  writeNotNull('Field3Format', instance.field3Format);
  writeNotNull('Field4Format', instance.field4Format);
  writeNotNull('Field5Format', instance.field5Format);
  writeNotNull('Field6Format', instance.field6Format);
  writeNotNull('Field7Format', instance.field7Format);
  writeNotNull('Field8Format', instance.field8Format);
  writeNotNull('Field9Format', instance.field9Format);
  writeNotNull('Field10Format', instance.field10Format);
  writeNotNull('Field11Format', instance.field11Format);
  writeNotNull('Field12Format', instance.field12Format);
  writeNotNull('Field13Format', instance.field13Format);
  writeNotNull('Field14Format', instance.field14Format);
  writeNotNull('Field15Format', instance.field15Format);
  writeNotNull('Field16Format', instance.field16Format);
  writeNotNull('Field17Format', instance.field17Format);
  writeNotNull('Field18Format', instance.field18Format);
  writeNotNull('Field19Format', instance.field19Format);
  writeNotNull('Field20Format', instance.field20Format);
  return val;
}
