import 'package:gameleven/src/Checkout/checkout_info.dart';
import 'package:gameleven/src/cart_screen/view/cart.dart';
import 'package:gameleven/src/consts/consts.dart';

class CustomBottoSheet extends StatefulWidget {
  const CustomBottoSheet({super.key});

  @override
  State<CustomBottoSheet> createState() => _CustomBottoSheetState();
}

class _CustomBottoSheetState extends State<CustomBottoSheet> {
  // DbHelper dbHelper = DbHelper();

  List<String> productName = [
    'Power Bank Water Gold Sound Box',
    'Mous',
    'PC Set',
    'Gaming Chairs',
    'Total PC Set'
  ];
  List<String> produckUnit = [
    '45000.OOXAF X 1',
    'Brand',
    '',
    'Brand',
    '45000.OOXAF X 1'
  ];
  List<int> productPrice = [5, 000, 1, 000, 60, 000, 7, 000, 90, 000];
  List<String> productImage = [headphones, chair, pc, mous, fullPC];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        decoration: const BoxDecoration(
            color: secoundaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10),
            Container(
              height: 4,
              width: 50,
              decoration: BoxDecoration(
                  color: Color(0xffB2B2B2),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 75,
                  child: Image.asset(
                    headphones,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Power Bank Water Gold",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text("Sound Box"),
                    Text("45000.OOXAF X 1",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xffB2B2B2))),
                    Row(
                      children: [
                        Text("500.00 SAR",
                            style:
                                TextStyle(fontSize: 16, color: primaryColor)),
                        SizedBox(width: 40),
                        Container(
                          height: 25,
                          width: 90,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 25,
                                  decoration: BoxDecoration(
                                      color: Color(0xffEBEBEB),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text("+",
                                        style: TextStyle(fontSize: 20)),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 25,
                                  child: const Center(
                                    child: Text("01",
                                        style: TextStyle(fontSize: 20)),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 25,
                                  decoration: BoxDecoration(
                                      color: Color(0xffEBEBEB),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text("--",
                                        style: TextStyle(fontSize: 19)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 60,
                child: Center(
                    child: Container(
                  height: 35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cart()));
                        },
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                              color: Color(0xffEBEBEB),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(color: Color(0xff989898)),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => CheckoutInfoScreen());
                        },
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              "Check Out",
                              style: TextStyle(color: secoundaryColor),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )))
          ],
        ));
  }
}
