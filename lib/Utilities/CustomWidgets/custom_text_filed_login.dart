import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/app_color.dart';
import '../Constants/image_constant.dart';

class CustomTextFieldLogin extends StatefulWidget {
  bool isPassword = false;
  final String hintText;
   String icon;
  Function(String?)? onChange;
  Widget? suffixIcon;
  Widget? prefixIcon;
  TextEditingController? controller;
  Color? fillColor = Colors.white;
  Color? textColor = Colors.white;
  Color borderColor;
  Color? hintColor;
  Color? cursorColor;
  bool? filled = false;
  bool? enable = true;
  bool? autofocus = false;
  double? borderRadius;
  double? paddingH;
  double? paddingV;
  double borderWidth;
  double opacity;

  double? fontSize ;
  FontWeight? fontWeight ;
  AutovalidateMode? autovalidateMode;
  int? maxLines;
  int? maxLength;
  String? Function(String? val)? validationFun;
  TextInputType textInputType;
  TextAlign? textAlign;
  FocusNode? focusNode;

  CustomTextFieldLogin({
    this.onChange,
    required this.hintText,
    required this.controller,
    required this.icon,
    this.isPassword = false,
    this.suffixIcon,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.prefixIcon,
    this.fillColor,
    this.textColor = Colors.white,
    this.cursorColor,
    this.hintColor,
    this.focusNode,
    this.borderColor = Colors.transparent,
    this.filled,
    this.enable,
    this.autofocus = false,
    this.fontSize = 16,
    this.borderRadius = 8,
    this.paddingH = 9,
    this.paddingV = 8,
    this.maxLines = 1,
    this.borderWidth = 0.8,
    this.opacity = 0.6,
    this.maxLength,
    this.validationFun,
    this.fontWeight = FontWeight.w700,
    this.textAlign = TextAlign.start,
    this.textInputType = TextInputType.text,
  });

  @override
  State<CustomTextFieldLogin> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextFieldLogin> {
  bool isHiden = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(Images.circle, scale: 4),
            Image.asset(widget.icon, scale: 4),

          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 57),
          child: Stack(
            children: [
              Image.asset(Images.subtract, scale: 4),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: TextFormField(
                  onChanged: widget.onChange,
                  autofocus: widget.autofocus!,
                  textAlignVertical: TextAlignVertical.center,
                  autovalidateMode: widget.autovalidateMode,
                  keyboardType: widget.textInputType,
                  validator: widget.validationFun,
                  maxLength: widget.maxLength,
                  focusNode: widget.focusNode,
                  style: TextStyle(
                    color: widget.textColor,
                    fontSize: widget.fontSize,
                    fontWeight: widget.fontWeight,
                    height: 1.9,
                  ),
                  enabled: widget.enable,
                  maxLines: widget.maxLines!,
                  controller: widget.controller,
                  textAlign: widget.textAlign!,

                  cursorColor: widget.cursorColor ?? AppColor.secondary,
                  cursorHeight: 20,

                  decoration: InputDecoration(
                    filled: widget.filled,
                    fillColor: widget.fillColor,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: widget.paddingH!,
                      vertical: widget.paddingV!,
                    ),
                    prefixIcon: widget.prefixIcon != null
                        ? Padding(
                            padding: EdgeInsets.only(left: 15.w),
                            child: widget.prefixIcon,
                          )
                        : null,
                    prefixIconConstraints: BoxConstraints(
                      maxWidth: 45.r,
                      maxHeight: 20.r,
                    ),
                    suffixIconConstraints: BoxConstraints(
                      maxWidth: 60.r,
                      maxHeight: 20.r,
                    ),

                    errorStyle: const TextStyle(color: Colors.red),

                    border: InputBorder.none,

                    disabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: widget.hintText,
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: widget.hintColor ?? AppColor.fontGrey,
                      fontSize: widget.fontSize,
                    ),
                  ),

                  obscureText: widget.isPassword
                      ? isHiden
                            ? false
                            : true
                      : widget.isPassword,

                  //  onChanged: (value){},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
