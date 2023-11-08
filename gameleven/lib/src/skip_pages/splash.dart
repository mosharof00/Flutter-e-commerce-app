import 'package:gameleven/src/consts/consts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating a method to change screen
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      // using Getx

      Get.to(() => Skip1());
      // Navigator.push(context, MaterialPageRoute(builder:(context) =>Skip1()));
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(splashImage),
        )),
        child: Center(
          child: Container(
              height: 60,
              width: 240,
              child: Center(
                  child: Image.asset(
                group442Image,
                fit: BoxFit.contain,
              ))),
        ),
      ),
    );
  }
}


//  Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) =>
//                                                 DetailPage()));
//                                   });