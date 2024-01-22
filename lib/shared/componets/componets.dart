import 'package:flutter/material.dart';
import 'package:today/modules/homescreen/homescreen.dart';
import 'package:today/modules/messagerScreen/messager_Screen.dart';

textBoxDefulat(
        {@required String? text,
        ValueChanged? onChanged,
        double hight = 50,
        double width = double.infinity,
        @required TextEditingController? controller,
        bool isPassword = false,
        TextInputType? textInputType,
        @required IconData? icon}) =>
    Container(
      height: hight,
      width: width,
      child: TextFormField(
        onChanged: onChanged,
        controller: controller,
        obscureText: isPassword,
        keyboardType: textInputType,
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(),
            labelText: text,
            suffixIcon: isPassword ? Icon(Icons.remove_red_eye) : null),
      ),
    );

DefualteButtomHomeScreen({
  @required String? text,
  double hight = 40,
  double width = double.infinity,
  @required VoidCallback? function,
}) =>
    Container(
      height: hight,
      width: width,
      child: ElevatedButton(
        onPressed: function,
        child: Text(text ?? ''),
      ),
    );
 