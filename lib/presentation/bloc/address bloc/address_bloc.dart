import 'dart:async';

import 'package:blinkit_clone/data/User%20Data/user_data.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/user_address.dart';
import 'package:bloc/bloc.dart';

part 'address_event.dart';
part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc() : super(AddressInitial()) {
    on<AddressEvent>((event, emit) {});
    on<TagSelectedEvent>(tagSelectedEvent);
    on<GetAddressesEvent>(getAddressesEvent);
    on<SelectedAddressEvent>(selectedAddressEvent);
    on<SaveAddressEvent>(saveAddressEvent);
    on<EditAddressEvent>(editAddressEvent);
    on<DeleteAddressEvent>(deleteAddressEvent);
  }

  FutureOr<void> tagSelectedEvent(
    TagSelectedEvent event,
    Emitter<AddressState> emit,
  ) {
    tagSelectedIndex = event.index;
    emit(TagSelectedState());
  }

  FutureOr<void> saveAddressEvent(
    SaveAddressEvent event,
    Emitter<AddressState> emit,
  ) {
    if (event.index == -1) {
      Map<String, dynamic> map = {
        "buildingName": event.buildingName,
        "floor": event.floor,
        "areaLocality": event.areaLocality,
        "landmark": event.landmark,
        "name": event.name,
        "phonenumber": event.phonenumber,
        "tag": event.tag,
        "pinCode": event.pinCode,
      };
      userAddresses.add(UserAddress.fromMap(map));
    } else {
      userAddresses.removeAt(event.index);
      userAddresses.insert(
        event.index,
        UserAddress.fromMap({
          "buildingName": event.buildingName,
          "floor": event.floor,
          "areaLocality": event.areaLocality,
          "landmark": event.landmark,
          "name": event.name,
          "phonenumber": event.phonenumber,
          "tag": event.tag,
          "pinCode": event.pinCode,
        }),
      );
    }
    UserData.setAddresses();
    emit(SaveAddressState());
    emit(AddressesLoadedState());
  }

  FutureOr<void> editAddressEvent(
    EditAddressEvent event,
    Emitter<AddressState> emit,
  ) {
    buildingNamecontroller.text = event.userAddress.buildingName;
    floorcontroller.text = event.userAddress.floor ?? "";
    areaLocalitycontroller.text = event.userAddress.areaLocality;
    landmarkcontroller.text = event.userAddress.landmark ?? "";
    namecontroller.text = event.userAddress.name;
    phonecontroller.text = event.userAddress.phonenumber ?? "";
    pinCodecontroller.text = event.userAddress.pinCode;
    emit(EditAddressState());
  }

  FutureOr<void> deleteAddressEvent(
    DeleteAddressEvent event,
    Emitter<AddressState> emit,
  ) {
    userAddresses.remove(event.userAddress);
    UserData.setAddresses();
    emit(DeleteAddressState());
  }

  Future<void> getAddressesEvent(
    GetAddressesEvent event,
    Emitter<AddressState> emit,
  ) async {
    emit(AddressesLoadingState());
    await UserData.getAddresses();
    emit(AddressesLoadedState());
  }

  FutureOr<void> selectedAddressEvent(
    SelectedAddressEvent event,
    Emitter<AddressState> emit,
  ) {
    emit(SelectedAddressState(userAddress: event.userAddress));
  }
}
