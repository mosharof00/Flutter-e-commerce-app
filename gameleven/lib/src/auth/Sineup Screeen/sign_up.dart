import 'package:gameleven/src/auth/Sineup%20Screeen/common_widget_signup.dart';
import 'package:gameleven/src/consts/consts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            height: 100,
            color: Color(0xff72142C),
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
                              size: 22, color: secoundaryColor),
                        ),
                      ),
                      const Text(
                        "Sign In",
                        style: TextStyle(fontSize: 18, color: secoundaryColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
              height: 520,
              width: 280,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 180,
                    child: Image.asset(
                      group442Image,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 385,
                    child: Column(children: [
                      commonTextField(hintText: sName),
                      commonTextField(hintText: sEmail),
                      commonTextField(hintText: sPassword),
                      commonTextField(hintText: sPhoneNumber),
                      Row(children: [
                        Checkbox(
                            checkColor: primaryColor,
                            value: isCheck,
                            onChanged: (newValue) {
                              setState(() {
                                isCheck = newValue;
                              });
                            }),
                        Expanded(
                          child: RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: sAgree,
                                style: TextStyle(fontSize: 14, color: black)),
                            TextSpan(
                                text: sPrivacy,
                                style: TextStyle(
                                    fontSize: 14, color: primaryColor)),
                            TextSpan(
                                text: sterms,
                                style: TextStyle(fontSize: 14, color: black)),
                          ])),
                        ),
                      ]),
                      const SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          color: isCheck == true
                              ? primaryColor
                              : const Color(0xffF0F0F0),
                          child: const Center(
                            child: Text("Create Account"),
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: sAlreadyHaveAccount,
                  style: TextStyle(fontSize: 14, color: black)),
              TextSpan(
                  text: sSignIn,
                  style: TextStyle(fontSize: 14, color: primaryColor)),
            ])),
          )
        ],
      ),
    );
  }
}
