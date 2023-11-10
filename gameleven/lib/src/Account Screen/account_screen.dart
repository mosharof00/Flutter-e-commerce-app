import 'package:gameleven/src/Account%20Screen/common_widget_account.dart';
import 'package:gameleven/src/consts/consts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: Column(
        children: [
          Container(
            height: 90,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 8, top: 40),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
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
          const SizedBox(height: 10),
          Container(
            height: 110,
            decoration: const BoxDecoration(
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
                    height: 110,
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
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
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
          const SizedBox(
            height: 20,
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
