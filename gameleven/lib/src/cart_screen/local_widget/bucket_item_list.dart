
import 'package:gameleven/src/consts/consts.dart';
import 'package:gameleven/src/consts/lists.dart';
import 'package:gameleven/src/Controller/item_provider.dart';

import '../../consts/consts.dart';
import '../cart_package.dart';

class BucketItemList extends StatelessWidget {
  const BucketItemList({super.key});

  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<ItemProvider>(context);
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          itemCount: itemProvider.cartList.length,
          itemBuilder: (context, index) {
            return BucketItem(
              onDelete: () {
                itemProvider.removeFromCart(itemProvider.cartList[index]);
              },
              minimizeTap: () {
                itemProvider.removeItem(index);
              },
              addTap: () {
                itemProvider.addItem(index);
              },
              onCheckoutTap: () {
                itemProvider.setIsCheckout(index);
              },
              counterText:
                  itemProvider.itemList[index]['cart_count'].toString(),
              itemName: itemProvider.itemList[index]['name'],
              itemPic: categoryImageLists[index],
              itemPrice: itemProvider.cartList[index]['price'].toString(),
              specialPrice:
                  itemProvider.cartList[index]['special_price'].toString(),
              inCheckout: itemProvider.cartList[index]['in_checkout'],
            );
          }),
    );
  }
}
