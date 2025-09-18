part of 'address_bloc.dart';

abstract class AddressState {
  const AddressState();
}

final class AddressInitial extends AddressState {}

final class TagSelectedState extends AddressState {}

final class AddressesLoadingState extends AddressState {}

final class AddressesLoadedState extends AddressState {}

final class SaveAddressState extends AddressState {}

final class EditAddressState extends AddressState {}

final class DeleteAddressState extends AddressState {}

final class SelectedAddressState extends AddressState {
  final UserAddress userAddress;

  SelectedAddressState({required this.userAddress});
}
