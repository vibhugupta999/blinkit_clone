import 'package:equatable/equatable.dart';

class UserAddress extends Equatable {
  final String buildingName;
  final String? floor;
  final String areaLocality;
  final String pinCode;
  final String? landmark;
  final String name;

  final String? phonenumber;
  final String tag;

  const UserAddress({
    required this.tag,
    required this.name,
    this.phonenumber,
    required this.buildingName,
    required this.floor,
    required this.areaLocality,
    required this.pinCode,
    required this.landmark,
  });

  @override
  List<Object?> get props => [
    buildingName,
    floor,
    areaLocality,
    pinCode,
    landmark,
    name,
    phonenumber,
  ];

  factory UserAddress.fromMap(Map<String, dynamic> map) {
    return UserAddress(
      buildingName: map["buildingName"] ?? "",
      floor: map["floor"] ?? "",
      areaLocality: map["areaLocality"] ?? "",
      landmark: map["landmark"] ?? "",
      pinCode: map["pinCode"] ?? "",
      name: map["name"] ?? "",
      phonenumber: map["phonenumber"] ?? "",
      tag: map["tag"] ?? "Other",
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "buildingName": buildingName,
      "floor": floor,
      "areaLocality": areaLocality,
      "landmark": landmark,
      "name": name,
      "phonenumber": phonenumber,
      "tag": tag,
      "pinCode": pinCode,
    };
  }
}

List<UserAddress> userAddresses = [];
