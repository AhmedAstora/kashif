import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';

class SearchFriendsWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  final Function(String?)? onChange;
  final Widget? prefixIcon;
  final FocusNode? focusNode;

  final Color? fillColor;
  final Color? textColor;
  final Color? hintColor;
  final Color? cursorColor;

  final Color borderColor;
  final Color focusedBorderColor;
  final double borderWidth;

  final bool enable;
  final bool autofocus;

  final double borderRadius;
  final double paddingH;
  final double paddingV;
  final double fontSize;

  const SearchFriendsWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.onChange,
    this.prefixIcon,
    this.focusNode,
    this.fillColor,
    this.textColor,
    this.hintColor,
    this.cursorColor,
    this.borderColor = const Color(0x34293767),
    this.focusedBorderColor = const Color(0x34293767),
    this.borderWidth = 1,
    this.enable = true,
    this.autofocus = false,
    this.borderRadius = 50,
    this.paddingH = 20,
    this.paddingV = 14,
    this.fontSize = 12,
  });

  @override
  State<SearchFriendsWidget> createState() => _SearchTextFieldWidgetState();
}

class _SearchTextFieldWidgetState extends State<SearchFriendsWidget> {
  bool hasText = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    final value = widget.controller.text.isNotEmpty;
    if (value != hasText) {
      setState(() => hasText = value);
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      width: 241.w,
      child: TextFormField(
        controller: widget.controller,
        onChanged: widget.onChange,
        autofocus: widget.autofocus,
        focusNode: widget.focusNode,
        enabled: widget.enable,
        maxLines: 1,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          color: widget.textColor ?? Colors.white,
          fontSize: widget.fontSize.sp,
          fontWeight: FontWeight.w400,
        ),
        cursorColor: widget.cursorColor ?? Colors.white,

        decoration: InputDecoration(
          filled: true,
          fillColor: widget.fillColor ?? const Color(0x34293767),

          contentPadding: EdgeInsets.symmetric(
            horizontal: widget.paddingH.w,
            vertical: widget.paddingV.h,
          ),

          prefixIcon: widget.prefixIcon,

          /// 🔁 Dynamic suffix icon
          suffixIcon: hasText
              ? GestureDetector(
            onTap: () {
              widget.controller.clear();
              widget.onChange?.call('');
            },
            child: Padding(
              padding: EdgeInsets.only(right: 12.w),
              child: Icon(
                Icons.close,
                color: Colors.white.withOpacity(0.8),
                size: 22.r,
              ),
            ),
          )
              : Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: Image.asset(
              Images.search,
              scale: 4,
            ),
          ),

          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: widget.hintColor ?? Colors.white.withOpacity(0.7),
            fontSize: widget.fontSize.sp,
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: widget.borderColor,
              width: widget.borderWidth,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: widget.focusedBorderColor,
              width: widget.borderWidth,
            ),
          ),
        ),
      ),
    );
  }
}
