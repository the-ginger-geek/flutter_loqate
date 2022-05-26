import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class AddressDetails {
  final String? id;
  final String? domesticId;
  final String? language;
  final String? languageAlternatives;
  final String? department;
  final String? company;
  final String? subBuilding;
  final String? buildingNumber;
  final String? buildingName;
  final String? secondaryStreet;
  final String? street;
  final String? block;
  final String? neighbourhood;
  final String? district;
  final String? city;
  final String? line1;
  final String? line2;
  final String? line3;
  final String? line4;
  final String? line5;
  final String? adminAreaName;
  final String? adminAreaCode;
  final String? province;
  final String? provinceName;
  final String? provinceCode;
  final String? postalCode;
  final String? countryName;
  final String? countryIso2;
  final String? countryIso3;
  final String? countryIsoNumber;
  final String? sortingNumber1;
  final String? sortingNumber2;
  final String? barcode;
  final String? poBoxNumber;
  final String? label;
  final String? type;
  final String? dataLevel;
  final String? field1;
  final String? field2;
  final String? field3;
  final String? field4;
  final String? field5;
  final String? field6;
  final String? field7;
  final String? field8;
  final String? field9;
  final String? field10;
  final String? field11;
  final String? field12;
  final String? field13;
  final String? field14;
  final String? field15;
  final String? field16;
  final String? field17;
  final String? field18;
  final String? field19;
  final String? field20;

  AddressDetails({
    this.id,
    this.domesticId,
    this.language,
    this.languageAlternatives,
    this.department,
    this.company,
    this.subBuilding,
    this.buildingNumber,
    this.buildingName,
    this.secondaryStreet,
    this.street,
    this.block,
    this.neighbourhood,
    this.district,
    this.city,
    this.line1,
    this.line2,
    this.line3,
    this.line4,
    this.line5,
    this.adminAreaName,
    this.adminAreaCode,
    this.province,
    this.provinceName,
    this.provinceCode,
    this.postalCode,
    this.countryName,
    this.countryIso2,
    this.countryIso3,
    this.countryIsoNumber,
    this.sortingNumber1,
    this.sortingNumber2,
    this.barcode,
    this.poBoxNumber,
    this.label,
    this.type,
    this.dataLevel,
    this.field1,
    this.field2,
    this.field3,
    this.field4,
    this.field5,
    this.field6,
    this.field7,
    this.field8,
    this.field9,
    this.field10,
    this.field11,
    this.field12,
    this.field13,
    this.field14,
    this.field15,
    this.field16,
    this.field17,
    this.field18,
    this.field19,
    this.field20,
  });

  factory AddressDetails.fromJson(Map<String, dynamic> json) => _$AddressDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AddressDetailsToJson(this);
}
