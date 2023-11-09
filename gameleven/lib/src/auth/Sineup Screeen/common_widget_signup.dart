import 'package:gameleven/src/consts/consts.dart';

Widget commonTextField({hintText, prefixIcon}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 18),
    child: TextFormField(
      decoration: InputDecoration(
          hintStyle: const TextStyle(),
          hintText: hintText,
          prefixIcon: prefixIcon,
          // isDense: true,
          fillColor: Color(0xffF0F0F0),
          filled: true,
          border: InputBorder.none,
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: primaryColor))),
    ),
  );
}
