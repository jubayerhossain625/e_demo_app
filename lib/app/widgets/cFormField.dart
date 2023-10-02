import 'package:flutter/material.dart';
import 'iconButton.dart';
import 'kText.dart';

Widget cFormField({
  double? height,
  double? width,
  Color? borderColor,
  String? hintText,
  TextAlign textAlign = TextAlign.start,
  TextEditingController? controller,
  bool readOnly = false,
  bool isRequiredField = false,
  String? validatorText,
  TextInputType? textInputType,
  double? borderRadius,
  Color? errorTextColor,
  bool obscureText = false,
  Color? hintTextColor,
  Widget? prefixIcon,
  Widget? suffixIcon,
  BorderSide? borderSide,
  void Function(String)? onChanged,
  bool isFilled = true,
  Color? filledColor,
  String? titleText,
  double? titleTextSize,
  int? minLines,
  int? maxLines = 1,
  int? maxLength = 30,
  void Function()? onTap,
  bool isCloseButtonShow = false,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      titleText == null
          ? const SizedBox(width: 10,)
          : KText(
        text: '$titleText',
        fontWeight: FontWeight.bold,
        fontSize: titleTextSize,
      ),
      titleText == null ? const SizedBox(width: 10,) : const SizedBox(height: 10,),
      SizedBox(
        height: height ?? null,
        width: width ?? null,
        child: TextFormField(
          onTap: onTap,
          minLines: minLines,
          maxLines: maxLines,
          maxLength: maxLength,
          onChanged: onChanged,
          controller: controller ?? TextEditingController(),
          keyboardType: textInputType,
          textAlign: textAlign,
          readOnly: readOnly,
          obscureText: obscureText,
          obscuringCharacter: '*',
          style: const TextStyle(

            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          validator: isRequiredField == false
              ? null
              : validatorText == '' &&
              validatorText!.isEmpty &&
              validatorText == 'null'
              ? null
              : (val) {
            if (val!.isEmpty) {
              return validatorText;
            }
            return null;
          },
          decoration: InputDecoration(
            counterText: '',
            contentPadding: const EdgeInsets.only(top:10,left: 7),
            errorStyle: TextStyle(color: errorTextColor ?? Colors.red),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 5),
              borderSide: borderSide ?? BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 5),
              borderSide: borderSide ?? BorderSide.none,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 5),
              borderSide: borderSide ??
                  const BorderSide(
                    color: Colors.red,
                  ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 5),
              borderSide: borderSide ??
                  const BorderSide(
                    color: Colors.red,
                  ),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon ??
                (isCloseButtonShow == true
                    ? iconButton(
                  onTap: () => controller!.clear(),
                  icons: Icons.close,
                  iconSize: 15,
                )
                    : const SizedBox()),
            hintText: '$hintText',
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: hintTextColor ?? Colors.black,
            ),
            fillColor: filledColor ?? Colors.black12,
            filled: isFilled,
          ),
        ),
      ),
    ],
  );
}