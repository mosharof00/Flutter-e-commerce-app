import 'package:gameleven/src/consts/consts.dart';

Widget containerCommonAccount({icon, text, textColor}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 2),
    child: Container(
      height: 70,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: secoundaryColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 5)
              ],
            ),
            child: Image.asset(
              icon,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 40,
            width: 255,
            decoration: BoxDecoration(
              color: secoundaryColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 2, offset: Offset(0, 5))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  style: TextStyle(color: textColor),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
