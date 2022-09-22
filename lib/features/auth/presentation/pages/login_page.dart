import 'package:customer_app/core/constants/colors_app.dart';
import 'package:customer_app/core/constants/sizes_app.dart';
import 'package:customer_app/core/constants/styles_app.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: ColorsApp.primary,
                ),
                hintText: 'username',
                hintStyle: StylesApp.subtitle2,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(SizesApp.r5),
                ),
                filled: true,
                fillColor: ColorsApp.greyTooLight,
              ),
              textInputAction: TextInputAction.next,
              autovalidateMode: AutovalidateMode.always,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value != null && value.isEmpty) {
                  return '*Requried';
                } else
                  return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
