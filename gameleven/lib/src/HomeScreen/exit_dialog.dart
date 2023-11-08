import 'package:flutter/services.dart';
import 'package:gameleven/src/HomeScreen/our_button.dart';
import 'package:gameleven/src/consts/consts.dart';

Widget exitDialog(context) {
  return Dialog(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        "Confirm".text.size(18).make(),
        const Divider(),
        10.heightBox,
        "Are you sure You want to exit?".text.size(16).make(),
        10.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ourButton1(
                color: Colors.red,
                onPress: () {
                  SystemNavigator.pop();
                },
                textColor: secoundaryColor,
                title: "Yes"),
            ourButton1(
                color: Colors.green,
                onPress: () {
                  Navigator.pop(context);
                },
                textColor: secoundaryColor,
                title: "No")
          ],
        )
      ],
    ).box.color(litegreys).padding(EdgeInsets.all(12)).make(),
  );
}
