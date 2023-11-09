import 'package:gameleven/src/consts/consts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(Icons.arrow_back_outlined, size: 22),
                      ),
                    ),
                  ],
                )),
            Container(
              alignment: Alignment.topCenter,
              height: 240,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage(headphones), fit: BoxFit.scaleDown),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      offset: Offset(0, 5))
                ],
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MiniCircle(),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "500.00 SAR",
                    style: TextStyle(color: primaryColor, fontSize: 20),
                  ),
                  Icon(Icons.share)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: Row(
                children: [
                  Text("46,0000.00 XAF", style: TextStyle(fontSize: 15)),
                  Text("-46%", style: TextStyle(fontSize: 15))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                  "Strategies de Survie des Populations Africaines\ndans une Economie Mondialisée - L’expérience\nCamerounaise.",
                  style: TextStyle(fontSize: 15)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, bottom: 10),
              child: Row(children: [
                RatingBar.builder(
                    unratedColor: Colors.white,
                    itemSize: 20,
                    initialRating: 4.6,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 5),
                    onRatingUpdate: (rating) {},
                    itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: primaryColor,
                        )),
                Text("4.6", style: TextStyle(fontSize: 15)),
              ]),
            ),
            Container(
              height: 90,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      offset: Offset(0, 8))
                ],
                color: Colors.white,
              ),
              child: Center(
                child: Container(
                  height: 80,
                  child: Image.asset(
                    offerImage,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      offset: Offset(0, 8))
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    color: primaryColor,
                    child: Center(
                      child: Text(
                        "Discriptipn",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        "Specification",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 225,
              padding: EdgeInsets.only(left: 5),
              color: secoundaryColor,
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "Strategies de Survie des Populations Africaines\ndans une Economie Mondialisée - L'expérience\nCamerounaise.Strategies de Survie des Populaions\nAfricaines dans une Economie Mondi- \nL’expérience Camero"),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      "Strategies de Survie des Populations Africaines\ndans une Economie Mondialisée - L'expérience\nCamerounaise.Strategies de Survie des Populaions\nAfricaines dans une Economie Mondi- \nL’expérience Camero"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Best Sale Products",
                        ),
                        Text("View All")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              offset: Offset(0, 8))
                        ],
                      ),
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                  mainAxisExtent: 220),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Image.asset(
                                  catagoriesImages2[index],
                                  height: 120,
                                  width: 170,
                                  fit: BoxFit.contain,
                                ),
                                15.heightBox,
                                Text('Power Bank Water Gold\nSound Box'),
                                10.heightBox,
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '  500.00 SAR',
                                        style: TextStyle(color: primaryColor),
                                      ),
                                      Container(
                                        height: 26,
                                        width: 26,
                                        decoration: BoxDecoration(
                                            color: Color(0xffF4F4F4),
                                            shape: BoxShape.circle),
                                        child: Image.asset(cartIcon),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                                .box
                                .white
                                .rounded
                                .clip(Clip.antiAlias)
                                .outerShadowSm
                                .make();
                          })),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ratingImage), fit: BoxFit.fitWidth),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      offset: Offset(0, 8))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              color: secoundaryColor,
              child: Center(
                child: Container(
                  height: 35,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Image.asset(favoriteIcon)),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return CustomBottoSheet();
                              });
                        },
                        child: Container(
                          height: 33,
                          width: 155,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: primaryColor, width: 1)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "My Cart",
                                  style: TextStyle(color: primaryColor),
                                ),
                                Container(
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFF90AC),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text("1"),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return CustomBottoSheet();
                              });
                        },
                        child: Container(
                          height: 33,
                          width: 155,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Buy Now",
                              style: TextStyle(color: secoundaryColor),
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
