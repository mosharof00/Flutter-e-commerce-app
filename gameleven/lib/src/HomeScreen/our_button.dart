import 'package:gameleven/src/consts/consts.dart';

Widget ourButton1({onPress, color, textColor, title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: color, padding: const EdgeInsets.all(12)),
    onPressed: () {
      onPress;
    },
    child: Container(
        height: 30,
        width: 100,
        color: color,
        child: Center(
            child: Text(
          title,
          style: TextStyle(color: textColor),
        ))),
  );
}
