part of 'address_bloc.dart';

abstract class AddressEvent {
  const AddressEvent();
}

class TagSelectedEvent extends AddressEvent {
  final int index;

  const TagSelectedEvent({required this.index});
}

class GetAddressesEvent extends AddressEvent {}

class SaveAddressEvent extends AddressEvent {
  final String buildingName;
  final String? floor;
  final String areaLocality;
  final String pinCode;
  final String? landmark;
  final String name;
  final String? phonenumber;
  final String tag;
  final UserAddress? userAddress;
  final int index;

  SaveAddressEvent({
    required this.userAddress,
    required this.index,
    required this.buildingName,
    required this.floor,
    required this.areaLocality,
    required this.pinCode,
    required this.landmark,
    required this.name,
    required this.phonenumber,
    required this.tag,
  });
}

class EditAddressEvent extends AddressEvent {
  final UserAddress userAddress;

  EditAddressEvent({required this.userAddress});
}

class DeleteAddressEvent extends AddressEvent {
  final UserAddress userAddress;

  DeleteAddressEvent({required this.userAddress});
}

class SelectedAddressEvent extends AddressEvent {
  final UserAddress userAddress;

  SelectedAddressEvent({required this.userAddress});
}
