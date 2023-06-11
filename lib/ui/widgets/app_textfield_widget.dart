import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';


class AppTextfield extends StatelessWidget {
  const AppTextfield({
    super.key, required this.controller, required this.hintText,this.maxLines,
  });

  final TextEditingController controller;
  final String hintText;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.PrimaryColor,
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.PrimaryColor,
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.PrimaryColor,
          )
        ),

      ),
    );
  }
}