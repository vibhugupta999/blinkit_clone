import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/presentation/bloc/login%20bloc/login_page_bloc.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({super.key, this.formKey});
  final GlobalKey? formKey;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      child: Form(
        key: formKey,
        child: TextFormField(
          onChanged: (value) {
            if (value.length == 10) {           
              FocusScope.of(context).unfocus();
              phone = value;
              continueButtonEnabled = true;
              continuecheckbloc.add(ContinueEnabledEvent());
            }
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          cursorColor: darkblack,
          cursorErrorColor: darkblack,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter mobile number";
            } else if (value.length < 10) {
              continueButtonEnabled = false;
              continuecheckbloc.add(ContinueEnabledEvent());
              return "Please enter 10 digit mobile number";
            }
            return null; //valid input
          },
          style: TextStyle(fontFamily: font, color: darkblack, fontSize: 15),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "Enter mobile number",
            hintStyle: TextStyle(
              fontFamily: font,
              color: lightblack,
              fontSize: 15,
            ),
            prefixIcon: Container(
              margin: EdgeInsets.only(left: 12),
              width: double.minPositive,
              height: double.minPositive,
              child: Center(
                child: Text(
                  "+ 91",
                  style: TextStyle(
                    fontFamily: fontbold,
                    color: darkblack,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
