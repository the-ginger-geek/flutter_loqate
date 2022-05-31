import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  @JsonKey(name: 'Id')
  final String? id;
  @JsonKey(name: 'DomesticId')
  final String? domesticId;
  @JsonKey(name: 'Language')
  final String? language;
  @JsonKey(name: 'LanguageAlternatives')
  final String? languageAlternatives;
  @JsonKey(name: 'Department')
  final String? department;
  @JsonKey(name: 'Company')
  final String? company;
  @JsonKey(name: 'SubBuilding')
  final String? subBuilding;
  @JsonKey(name: 'BuildingNumber')
  final String? buildingNumber;
  @JsonKey(name: 'BuildingName')
  final String? buildingName;
  @JsonKey(name: 'SecondaryStreet')
  final String? secondaryStreet;
  @JsonKey(name: 'Street')
  final String? street;
  @JsonKey(name: 'Block')
  final String? block;
  @JsonKey(name: 'Neighbourhood')
  final String? neighbourhood;
  @JsonKey(name: 'District')
  final String? district;
  @JsonKey(name: 'City')
  final String? city;
  @JsonKey(name: 'Line1')
  final String? line1;
  @JsonKey(name: 'Line2')
  final String? line2;
  @JsonKey(name: 'Line3')
  final String? line3;
  @JsonKey(name: 'Line4')
  final String? line4;
  @JsonKey(name: 'Line5')
  final String? line5;
  @JsonKey(name: 'AdminAreaName')
  final String? adminAreaName;
  @JsonKey(name: 'AdminAreaCode')
  final String? adminAreaCode;
  @JsonKey(name: 'Province')
  final String? province;
  @JsonKey(name: 'ProvinceName')
  final String? provinceName;
  @JsonKey(name: 'ProvinceCode')
  final String? provinceCode;
  @JsonKey(name: 'PostalCode')
  final String? postalCode;
  @JsonKey(name: 'CountryName')
  final String? countryName;
  @JsonKey(name: 'CountryIso2')
  final String? countryIso2;
  @JsonKey(name: 'CountryIso3')
  final String? countryIso3;
  @JsonKey(name: 'CountryIsoNumber')
  final String? countryIsoNumber;
  @JsonKey(name: 'SortingNumber1')
  final String? sortingNumber1;
  @JsonKey(name: 'SortingNumber2')
  final String? sortingNumber2;
  @JsonKey(name: 'Barcode')
  final String? barcode;
  @JsonKey(name: 'PoBoxNumber')
  final String? poBoxNumber;
  @JsonKey(name: 'Label')
  final String? label;
  @JsonKey(name: 'Type')
  final String? type;
  @JsonKey(name: 'DataLevel')
  final String? dataLevel;
  @JsonKey(name: 'Field1')
  final String? field1;
  @JsonKey(name: 'Field2')
  final String? field2;
  @JsonKey(name: 'Field3')
  final String? field3;
  @JsonKey(name: 'Field4')
  final String? field4;
  @JsonKey(name: 'Field5')
  final String? field5;
  @JsonKey(name: 'Field6')
  final String? field6;
  @JsonKey(name: 'Field7')
  final String? field7;
  @JsonKey(name: 'Field8')
  final String? field8;
  @JsonKey(name: 'Field9')
  final String? field9;
  @JsonKey(name: 'Field10')
  final String? field10;
  @JsonKey(name: 'Field11')
  final String? field11;
  @JsonKey(name: 'Field12')
  final String? field12;
  @JsonKey(name: 'Field13')
  final String? field13;
  @JsonKey(name: 'Field14')
  final String? field14;
  @JsonKey(name: 'Field15')
  final String? field15;
  @JsonKey(name: 'Field16')
  final String? field16;
  @JsonKey(name: 'Field17')
  final String? field17;
  @JsonKey(name: 'Field18')
  final String? field18;
  @JsonKey(name: 'Field19')
  final String? field19;
  @JsonKey(name: 'Field20')
  final String? field20;

  Address({
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

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
