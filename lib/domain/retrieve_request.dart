import 'package:json_annotation/json_annotation.dart';

part 'retrieve_request.g.dart';

@JsonSerializable()
class RetrieveRequest {
  /// The Id from a Find method to retrieve the details for.
  @JsonKey(name: 'Id')
  final String? id;

  @JsonKey(name: 'Field1Format', includeIfNull: false)
  final String? field1Format;
  @JsonKey(name: 'Field2Format', includeIfNull: false)
  final String? field2Format;
  @JsonKey(name: 'Field3Format', includeIfNull: false)
  final String? field3Format;
  @JsonKey(name: 'Field4Format', includeIfNull: false)
  final String? field4Format;
  @JsonKey(name: 'Field5Format', includeIfNull: false)
  final String? field5Format;
  @JsonKey(name: 'Field6Format', includeIfNull: false)
  final String? field6Format;
  @JsonKey(name: 'Field7Format', includeIfNull: false)
  final String? field7Format;
  @JsonKey(name: 'Field8Format', includeIfNull: false)
  final String? field8Format;
  @JsonKey(name: 'Field9Format', includeIfNull: false)
  final String? field9Format;
  @JsonKey(name: 'Field10Format', includeIfNull: false)
  final String? field10Format;
  @JsonKey(name: 'Field11Format', includeIfNull: false)
  final String? field11Format;
  @JsonKey(name: 'Field12Format', includeIfNull: false)
  final String? field12Format;
  @JsonKey(name: 'Field13Format', includeIfNull: false)
  final String? field13Format;
  @JsonKey(name: 'Field14Format', includeIfNull: false)
  final String? field14Format;
  @JsonKey(name: 'Field15Format', includeIfNull: false)
  final String? field15Format;
  @JsonKey(name: 'Field16Format', includeIfNull: false)
  final String? field16Format;
  @JsonKey(name: 'Field17Format', includeIfNull: false)
  final String? field17Format;
  @JsonKey(name: 'Field18Format', includeIfNull: false)
  final String? field18Format;
  @JsonKey(name: 'Field19Format', includeIfNull: false)
  final String? field19Format;
  @JsonKey(name: 'Field20Format', includeIfNull: false)
  final String? field20Format;

  RetrieveRequest({
    this.id,
    this.field1Format,
    this.field2Format,
    this.field3Format,
    this.field4Format,
    this.field5Format,
    this.field6Format,
    this.field7Format,
    this.field8Format,
    this.field9Format,
    this.field10Format,
    this.field11Format,
    this.field12Format,
    this.field13Format,
    this.field14Format,
    this.field15Format,
    this.field16Format,
    this.field17Format,
    this.field18Format,
    this.field19Format,
    this.field20Format,
  });

  factory RetrieveRequest.fromJson(Map<String, dynamic> json) => _$RetrieveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RetrieveRequestToJson(this);
}
