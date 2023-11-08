import 'package:gameleven/src/auth/Sineup%20Screeen/sign_up.dart';
import 'package:gameleven/src/consts/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              height: 485,
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
                    height: 360,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              hintText: "phone Number",
                              prefixIcon: Icon(Icons.phone),
                              isDense: true,
                              fillColor: Color(0xffF0F0F0),
                              filled: true,
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: primaryColor))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          // keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                              hintText: "Password",
                              suffixIcon: Icon(Icons.remove_red_eye),
                              prefixIcon: Icon(Icons.lock),
                              isDense: true,
                              fillColor: Color(0xffF0F0F0),
                              filled: true,
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: primaryColor))),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: TextButton(
                                onPressed: () {},
                                child: const Text("Forgot Password?",
                                    style:
                                        TextStyle(color: Color(0xff9A9A9A))))),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => NavigationBarMain());
                          },
                          child: Container(
                            height: 50,
                            color: primaryColor,
                            child: const Center(
                              child: Text("Sign In"),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          child: Center(
                            child: Image.asset(
                              socialloginImg,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "By clicking this button, you agree to our privacy Policy",
                              style: TextStyle(fontSize: 11),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => SignUpScreen());
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
