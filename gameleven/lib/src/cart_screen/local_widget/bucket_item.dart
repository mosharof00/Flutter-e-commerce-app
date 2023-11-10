import 'package:gameleven/src/consts/consts.dart';
import 'package:gameleven/src/model/cart_count.dart';

class BucketItem extends StatelessWidget {
  String itemName, itemPrice, itemPic, counterText, specialPrice;
  dynamic onDelete, minimizeTap, addTap, onCheckoutTap;
  final bool inCheckout;
  BucketItem(
      {super.key,
      required this.itemName,
      required this.itemPic,
      required this.itemPrice,
      required this.onDelete,
      required this.minimizeTap,
      required this.addTap,
      required this.counterText,
      required this.specialPrice,
      required this.inCheckout,
      required this.onCheckoutTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 7),
        padding: const EdgeInsets.all(16),
        height: 137,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          color: Colors.white,
          //borderRadius: BorderRadius.circular(5.r)
        ),
        child: Row(
          children: [
            SizedBox(height: 100, width: 100, child: Image.asset(itemPic)),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 40,
                    width: 150,
                    child: Text(
                      itemName,
                      style: const TextStyle(
                          fontSize: 16, color: Color(0xff7E7E7E)),
                    )),
                const SizedBox(height: 5),
                Text(
                  itemPrice,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xffB2B2B2),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  specialPrice,
                  style: const TextStyle(
                    fontSize: 15,
                    color: primaryColor,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onCheckoutTap,
                  child: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffDBDBDB)),
                          shape: BoxShape.circle,
                          color: inCheckout ? primaryColor : Colors.white),
                      child: inCheckout
                          ? const Icon(
                              Icons.done,
                              size: 10,
                              color: Colors.white,
                            )
                          : null),
                ),
                CartCount(
                    minimizeTap: minimizeTap,
                    addTap: addTap,
                    counterText: counterText)
              ],
            )
          ],
        ));
  }
}
