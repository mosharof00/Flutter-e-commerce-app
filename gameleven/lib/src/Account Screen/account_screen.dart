import 'package:gameleven/src/Account%20Screen/common_widget_account.dart';
import 'package:gameleven/src/consts/consts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: Column(
        children: [
          Container(
            height: 90,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 30, left: 8, top: 40),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(Icons.arrow_back_outlined,
                              size: 22, color: black),
                        ),
                      ),
                      const Text(
                        "Account",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: secoundaryColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 2, offset: Offset(0, 8))
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 130,
                    child: Image.asset(
                      profileImg,
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            height: 320,
            decoration: BoxDecoration(
              color: secoundaryColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 2, offset: Offset(0, 8))
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                containerCommonAccount(
                    icon: homeIconP,
                    text: sOrderDetailes,
                    textColor: primaryColor),
                containerCommonAccount(
                    icon: userIcon, text: sEditProfil, textColor: black),
                containerCommonAccount(
                    icon: addressIcon, text: sAddtess, textColor: black),
                containerCommonAccount(
                    icon: changeLanguageIcon, text: sLocaton, textColor: black),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: containerCommonAccount(
                icon: exitloginIcon, text: "Logout", textColor: black),
          ),
        ],
      ),
    );
  }
}
