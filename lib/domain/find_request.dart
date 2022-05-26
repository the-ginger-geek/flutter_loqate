import 'package:json_annotation/json_annotation.dart';

part 'find_request.g.dart';

@JsonSerializable()
class FindRequest {
  /// The search text to find. Ideally a postcode or the start of the address.
  @JsonKey(name: 'Text')
  final String addressString;

  ///	A starting location for the search. This can be the name or ISO 2 or 3
  /// character code of a country, WGS84 coordinates (comma separated) or IP
  /// address to search from.
  @JsonKey(name: 'Origin', includeIfNull: false)
  final String? origin;

  ///  A container for the search. This should only be another Id previously
  ///  returned from this service when the Type of the result was not 'Address'.
  @JsonKey(name: 'Container', includeIfNull: false)
  final String? container;

  ///  The preferred language for results. This should be a 2 or 4 character
  ///  language code e.g. (en, fr, en-gb, en-us etc).
  @JsonKey(name: 'Language', includeIfNull: false)
  final String? language;

  /// You can include or exclude certain type of addresses or locations from the
  /// address matches presented back to end user. All Filters are currently operating
  /// on the basis of an exact match. Multiple Filters can be provided in the same request.
  //
  // &Filters=<Fieldname>:<Text> - this is an IS filter and will limit matches to the subset
  // where this field value is as specified
  // &Filters=!<Fieldname>:<Text> - this is an ISN'T filter and will exclude any matches where
  // this field value is as specified
  //
  // Example
  //
  // This will return matches that are in Nottingham, UK and exclude addresses with NG11 7EP postcode:
  // &Filters=Locality:Nottingham&Filters=!Postcode:NG11 7EP
  @JsonKey(name: 'Filters', includeIfNull: false)
  final String? filters;

  ///  This allows specifying a geographically bound area from which results will be returned. Please
  ///  note that this is dependent on the accuracy of geocodes available in each country. At least
  ///  three coordinate pairs must be specified.
  ///
  // Example:
  //
  // This will return matches that are in Nottingham, UK and exclude addresses with NG11 7EP postcode:
  // &GeoFence=[[{
  // 		"lat": 52.19400128,
  // 		"lon": -2.225029029
  // 	}, {
  // 		"lat": 52.18557324,
  // 		"lon": -2.220275221
  // 	}, {
  // 		"lat": 52.18708847,
  // 		"lon": -2.205246038
  // 	}, {
  // 		"lat": 52.19734151,
  // 		"lon": -2.211512537
  // 	}, {
  // 		"lat": 52.19400128,
  // 		"lon": -2.225029029
  // 	}]
  // ]
  @JsonKey(name: 'Geofence', includeIfNull: false)
  final String? geofence;

  /// A list of ISO 2 or 3 character country codes to limit the search within.
  @JsonKey(name: 'Countries', includeIfNull: false)
  final List<String>? countries;

  /// The maximum number of results to return.
  @JsonKey(name: 'Limit', includeIfNull: false)
  final int? limit;

  /// When Bias is set to True and when the Origin value provided is WGS84 coordinates
  /// or an IP address, this allows the user to find addresses that are near to them with
  /// less entry. When Bias is set to False, information provided in the Origin field will
  /// be used to prefer address matches from the country that Origin field identifies.
  @JsonKey(name: 'Bias', includeIfNull: false)
  final bool? bias;

  /// Whether the API is being called from a middleware implementation (and therefore the
  /// calling IP address should not be used for biasing).
  @JsonKey(name: 'IsMiddleware', includeIfNull: false)
  final bool? isMiddleware;

  FindRequest({
    required this.addressString,
    this.isMiddleware,
    this.countries,
    this.container,
    this.language,
    this.geofence,
    this.filters,
    this.origin,
    this.limit,
    this.bias,
  });

  FindRequest copyWith({
    String? addressString,
    List<String>? countries,
    bool? isMiddleware,
    String? container,
    String? language,
    String? geofence,
    String? filters,
    String? origin,
    int? limit,
    bool? bias,
  }) => FindRequest(
    addressString: addressString ?? this.addressString,
    isMiddleware: isMiddleware ?? this.isMiddleware,
    countries: countries ?? this.countries,
    container: container ?? this.container,
    language: language ?? this.language,
    geofence: geofence ?? this.geofence,
    filters: filters ?? this.filters,
    origin: origin ?? this.origin,
    limit: limit ?? this.limit,
    bias: bias ?? this.bias,
  );

  Map<String, dynamic> toJson() => _$FindRequestToJson(this);
}
