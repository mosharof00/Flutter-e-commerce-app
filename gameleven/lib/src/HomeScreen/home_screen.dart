import 'package:gameleven/src/consts/consts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });

  final List catList = [
    "Hot",
    "Computer & Office",
    "Phone Accessories",
    "Gaming PC",
    "Toys",
  ];

  // final List _commonImages = [
  //   // chair, mous, pc, headphones,
  //   "assets/images/DXRACER-Origin-Series-Gaming-Chair-Black-Red-1.png",
  //   "assets/images/headphones_PNG101924.png",
  //   "assets/images/mm2.png",
  //   "assets/images/254-2545477_gaming-computer-png-hd-gaming-pc.png",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.menu),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    height: MediaQuery.of(context).size.height / 18,
                    decoration: BoxDecoration(
                      color: Color(0xffE8E8E8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'What would you like to buy?',

                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xffAFAFAF),
                          size: 25,
                        ),
                        // fillColor: Color(0xffAFAFAF)
                      ),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      for (int i = 0; i < catList.length; i++)
                        Container(
                          margin: EdgeInsets.all(2),
                          padding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                          decoration: BoxDecoration(
                            color: catList[i] == " "
                                ? Color(0xffD81D4C)
                                : Color(0xffE8E8E8),
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
              SizedBox(
                height: 5,
              ),
              BlacContainer(),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Flash Deals"),
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
                                      child: Icon(
                                        Icons.flash_on,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color(0xffD81D4C),
                                          shape: BoxShape.circle)),
                                  Text(
                                    "68:45:15",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(color: Color(0xffD81D4C)),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      height: 70,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
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
                            physics: NeverScrollableScrollPhysics(),
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
              SizedBox(
                height: 15,
              ),
              DailyFeatures(),
              SizedBox(
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
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Hot Categories"),
                          ]),
                    ),
                    Container(
                      height: 70,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
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
                            physics: NeverScrollableScrollPhysics(),
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
              SizedBox(height: 15),
              Container(
                height: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xff41F0CE),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
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
                            Text("Brands "),
                            Container(
                                width: 75,
                                height: 20,
                                child: Center(
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
                          physics: NeverScrollableScrollPhysics(),
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
                            physics: NeverScrollableScrollPhysics(),
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
              SizedBox(
                height: 15,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Best Sale Products",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        // padding: EdgeInsets.all(10),
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
                                  Row(
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
                                        builder: (context) => DetailPage()));
                              });
                            })),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 40,
          selectedItemColor: primaryColor,
          unselectedItemColor: Color(0xffF4F4F4),
          currentIndex: 0,
          onTap: (value) {},
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Image.asset(categoryIcon), label: ""),
            BottomNavigationBarItem(icon: Image.asset(favoriteIcon), label: ""),
            BottomNavigationBarItem(icon: Image.asset(cartIcon), label: ""),
            BottomNavigationBarItem(icon: Image.asset(accountIcon), label: "")
          ]),
      floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          child: Image.asset(homeIcon),
          onPressed: () {}),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
