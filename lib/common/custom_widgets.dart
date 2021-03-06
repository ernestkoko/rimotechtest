
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customTextField({String? hint,
  TextEditingController? controller,
  FocusNode? focusNode,
  String? errorText,
  Widget? suffixIcon, bool readOnly =false,
  TextInputType? textInputType, ValueChanged<String>? onChanged, Widget? label}) {
  return TextField(
      controller: controller,
      focusNode: focusNode,
      readOnly: readOnly,



      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        errorText:errorText ,

        hintText: hint,
        label: label,

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
      onEditingComplete: () => {});
}

Widget customRow(ValueChanged<String>? onChange) {

  return
    Row(
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

        ),)
      ]

  );


}

Widget customCancelButton({GestureTapCallback? onTap, String? title}){
  return  Expanded(
    child: GestureDetector(
        onTap:onTap ?? () => Get.back(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            const Icon(Icons.cancel_outlined),
           if(title !=null) Container(
              margin: const EdgeInsets.only(left: 20),
              child:  Text(title),
            )
          ],
        )),
  );
}