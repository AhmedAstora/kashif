import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/app_color.dart';

class CustomTextField extends StatefulWidget {
  bool isPassword = false;
  final String hintText;
  Function(String?)? onChange;
  Widget? suffixIcon;
  Widget? prefixIcon;
  TextEditingController? controller;
  Color? fillColor = Colors.black;
  Color? textColor = Colors.black;
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

  double? fontSize = 12.sp;
  FontWeight? fontWeight;
  AutovalidateMode? autovalidateMode;
  int? maxLines;
  int? maxLength;
  String? Function(String? val)? validationFun;
  TextInputType textInputType;
  TextAlign? textAlign;
  FocusNode? focusNode;

  CustomTextField({
    this.onChange,
    required this.hintText,
    required this.controller,
    this.isPassword = false,
    this.suffixIcon,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.prefixIcon,
    this.fillColor,
    this.textColor,
    this.cursorColor,
    this.hintColor,
    this.focusNode,
    this.borderColor = Colors.transparent,
    this.filled,
    this.enable,
    this.autofocus = false,
    this.fontSize,
    this.borderRadius = 8,
    this.paddingH = 9,
    this.paddingV = 8,
    this.maxLines = 1,
    this.borderWidth = 0.8,
    this.opacity = 0.6,
    this.maxLength,
    this.validationFun,
    this.fontWeight,
    this.textAlign = TextAlign.start,
    this.textInputType = TextInputType.text,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isHiden = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        prefixIconConstraints: BoxConstraints(maxWidth: 45.r, maxHeight: 20.r),
        suffixIconConstraints: BoxConstraints(maxWidth: 60.r, maxHeight: 20.r),
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: widget.suffixIcon,
          // child: widget.isPassword
          //     ? isHiden
          //         ? InkWell(
          //             onTap: () {
          //               setState(() {
          //                 isHiden = !isHiden;
          //               });
          //             },
          //             child: const Icon(
          //               Icons.visibility,
          //               color: Colors.black,
          //               size: 19,
          //             ),
          //           )
          //         : InkWell(
          //             onTap: () {
          //               setState(() {
          //                 isHiden = !isHiden;
          //               });
          //             },
          //             child: const Icon(Icons.visibility_off,
          //                 color: Colors.black, size: 19))
          //     : widget.suffixIcon
        ),
        errorStyle: const TextStyle(color: Colors.red),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius!),
          borderSide: BorderSide(
            color: (widget.borderColor ).withValues(alpha: widget.opacity),
            width: widget.borderWidth.w,
          ),
        ),

        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius!),
          borderSide: BorderSide(
            color: (widget.borderColor ).withValues(alpha: widget.opacity),
            width: widget.borderWidth.w,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius!),
          borderSide: BorderSide(
            color: Colors.red..withValues(alpha: widget.opacity),
            width: widget.borderWidth.w,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius!),
          borderSide: BorderSide(
            color: Colors.red..withValues(alpha: widget.opacity),
            width: widget.borderWidth.w,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius!),
          borderSide: BorderSide(
            color: (widget.borderColor ).withValues(alpha: widget.opacity),
            width: widget.borderWidth.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius!),
          borderSide: BorderSide(
            color: (AppColor.primary).withValues(alpha: widget.opacity),
            width: 1.w,
          ),
        ),
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
    );
  }
}
