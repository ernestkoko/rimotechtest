
import 'package:flutter/material.dart';

Widget customTextField({String? hint,
  TextEditingController? controller,
  FocusNode? focusNode,
  Widget? suffixIcon, bool readOnly =false,
  TextInputType? textInputType, ValueChanged<String>? onChanged}) {
  return Expanded(child: TextField(
      controller: controller,
      focusNode: focusNode,
      readOnly: readOnly,


      decoration: InputDecoration(
        suffixIcon: suffixIcon,

        hintText: hint,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        labelStyle: const TextStyle(fontWeight: FontWeight.bold),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 10),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      onChanged: onChanged,

      // onChanged: controller.onMeterNumberChanged,
      keyboardType: textInputType,
      textInputAction: TextInputAction.next,
      onEditingComplete: () => {}),);
}

Widget customRow(ValueChanged<String>? onChange) {

  return IntrinsicWidth(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: customTextField(hint: "NG (+234)", readOnly: true),
        ),
     const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: customTextField(
            hint: "Phone Number",
            onChanged: onChange,
          ),
        ),
      ],
    ),
  );
}