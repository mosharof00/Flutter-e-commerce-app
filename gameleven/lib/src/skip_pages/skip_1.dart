import 'package:gameleven/src/auth/Login%20Page/login_screen.dart';
import 'package:gameleven/src/consts/consts.dart';

class Skip1 extends StatefulWidget {
  const Skip1({super.key});

  @override
  State<Skip1> createState() => _Skip1State();
}

class _Skip1State extends State<Skip1> {
  int currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 7),
      duration: const Duration(milliseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
          color: currentPage == index ? primaryColor : const Color(0xff707070),
          shape: BoxShape.circle),
    );
  }

  @override
  Widget build(BuildContext context) {
    // initialize size config
    SizeConfig().init(context);
    // double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
                flex: 4,
                child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: onboardingContents.length,
                    itemBuilder: (context, index) => Column(
                          children: [
                            Container(
                                child: Image.asset(
                              onboardingContents[index].image,
                              fit: BoxFit.contain,
                            )),
                            SizedBox(
                              height: sizeV * 5,
                            ),
                            Text(
                              onboardingContents[index].title,
                              style: const TextStyle(
                                color: Color(0xffD81D4C),
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: sizeV * 2,
                            ),
                            const Text(
                              'Zak can be customized and used for any niche. \n The vast possibilities of this template makes it \n multi purpose',
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: sizeV * 3,
                            ),
                          ],
                        ))),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(
                      onboardingContents.length,
                      (index) => dotIndicator(index),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Text(
                            "Skip",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )));
  }
}
