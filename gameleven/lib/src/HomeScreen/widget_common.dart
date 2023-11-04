import 'package:gameleven/src/consts/consts.dart';

class BlacContainer extends StatelessWidget {
  const BlacContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '2021 Newly',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      const Text(
                        'Gaming Headset',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      const Text(
                        'Wirless or Customize Drive',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 26,
                        width: 110,
                        child: Text(
                          'Shop Now',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffD81D4C),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    padding: EdgeInsets.all(13),
                    child: Image.asset(
                      headphones,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: MiniCircle(),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class MiniCircle extends StatelessWidget {
  const MiniCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 40,
      decoration: BoxDecoration(
          color: Color(0xffAFAFAF), borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 3),
            height: 5,
            width: 5,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 3),
            height: 5,
            width: 5,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 3),
            height: 5,
            width: 5,
            decoration: const BoxDecoration(
              color: Color(0xffD81D4C),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 3),
            height: 5,
            width: 5,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 3),
            height: 5,
            width: 5,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}

class DailyFeatures extends StatelessWidget {
  const DailyFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffE4E4FC),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Text("Daily Features"),
              ],
            ),
          ),
          Expanded(
              flex: 4,
              child: Container(
                height: 95,
                child: Row(
                  children: [
                    Container(
                      height: 95,
                      width: 84,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          'Hot Sales\n50% OFF',
                          style: TextStyle(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 13),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 6, top: 3, right: 3),
                              child: Container(
                                height: 78,
                                width: 67,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Image.asset(
                                  mous,
                                  height: 56,
                                  width: 57,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 78,
                                width: 67,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Image.asset(pc, fit: BoxFit.scaleDown),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Container(
                                height: 78,
                                width: 67,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Image.asset(
                                  headphones,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
