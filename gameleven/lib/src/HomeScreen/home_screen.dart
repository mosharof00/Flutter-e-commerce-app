import 'package:gameleven/src/Controller/item_provider.dart';
import 'package:gameleven/src/consts/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  // final List catList = [
  //   "Hot",
  //   "Computer & Office",
  //   "Phone Accessories",
  //   "Gaming PC",
  //   "Toys",
  // ];+

  @override
  Widget build(BuildContext context) {
    final itemProvider = Provider.of<ItemProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.menu),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.3,
                        height: MediaQuery.of(context).size.height / 18,
                        decoration: BoxDecoration(
                          color: const Color(0xffE8E8E8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'What would you like to buy?',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xffAFAFAF),
                              size: 25,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          for (int i = 0; i < catList.length; i++)
                            Container(
                              margin: const EdgeInsets.all(2),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 4),
                              decoration: BoxDecoration(
                                color: catList[i] == " "
                                    ? const Color(0xffD81D4C)
                                    : const Color(0xffE8E8E8),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Text(
                                catList[i],
                                style: TextStyle(
                                  color: catList[i] == "Hot"
                                      ? Color(0xffD81D4C)
                                      : Colors.black,
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  BlacContainer(),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 150,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Flash Deals"),
                                Container(
                                  width: 75,
                                  height: 20,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: 14,
                                          height: 14,
                                          decoration: const BoxDecoration(
                                              color: Color(0xffD81D4C),
                                              shape: BoxShape.circle),
                                          child: const Icon(
                                            Icons.flash_on,
                                            color: Colors.white,
                                            size: 10,
                                          )),
                                      const Text(
                                        "68:45:15",
                                        textAlign: TextAlign.end,
                                        style:
                                            TextStyle(color: Color(0xffD81D4C)),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        Container(
                          height: 70,
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: catagoriesImages.length,
                              itemBuilder: (context, index) {
                                return HomeScreen1(
                                  image: catagoriesImages[index],
                                );
                              }),
                        ),
                        Expanded(
                          child: Container(
                            height: 20,
                            child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: catagoriesList.length,
                                itemBuilder: (context, index) {
                                  return ColorContainer(
                                    Fcolor: containerColors[index],
                                    text: catagoriesList[index],
                                  );
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const DailyFeatures(),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 150,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xffFED3B9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const Expanded(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Hot Categories"),
                              ]),
                        ),
                        Container(
                          height: 70,
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: catagoriesImages.length,
                              itemBuilder: (context, index) {
                                return HomeScreen1(
                                  image: catagoriesImages[index],
                                );
                              }),
                        ),
                        Expanded(
                          child: Container(
                            height: 20,
                            child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: catagoriesList.length,
                                itemBuilder: (context, index) {
                                  return ColorContainer(
                                    Fcolor: containerColors[index],
                                    text: hotCategoriesList[index],
                                  );
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 150,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xff41F0CE),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            offset: Offset(0, 10))
                      ],
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Brands "),
                                Container(
                                    width: 75,
                                    height: 20,
                                    child: const Center(
                                      child: Text(
                                        'View More',
                                        style: TextStyle(
                                          color: Color(0xff8D8D8D),
                                        ),
                                      ),
                                    )),
                              ]),
                        ),
                        Container(
                          height: 70,
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: catagoriesImages.length,
                              itemBuilder: (context, index) {
                                return HomeScreen1(
                                  image: catagoriesImages[index],
                                );
                              }),
                        ),
                        Expanded(
                          child: Container(
                            height: 20,
                            child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: catagoriesList.length,
                                itemBuilder: (context, index) {
                                  return BrandsContainer(
                                    img: brandsLogo[index],
                                  );
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Best Sale Products",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            // padding: EdgeInsets.all(10),
                            child: GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
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
                                      const Text(
                                          'Power Bank Water Gold\nSound Box'),
                                      10.heightBox,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            '  500.00 SAR',
                                            style:
                                                TextStyle(color: primaryColor),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              itemProvider.setAddToCart(index);
                                            },
                                            child: Container(
                                              height: 26,
                                              width: 26,
                                              decoration: const BoxDecoration(
                                                  color: Color(0xffF4F4F4),
                                                  shape: BoxShape.circle),
                                              child: Image.asset(cartIcon),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                      .box
                                      .white
                                      .rounded
                                      .clip(Clip.antiAlias)
                                      .outerShadowSm
                                      .make()
                                      .onTap(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailPage()));
                                  });
                                })),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
