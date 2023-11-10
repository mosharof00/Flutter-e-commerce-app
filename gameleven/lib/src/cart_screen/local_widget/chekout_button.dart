import 'package:gameleven/src/consts/consts.dart';
import '../../Controller/item_provider.dart';
class CheckoutButton extends StatefulWidget {
  const CheckoutButton({
    super.key,
  });

  @override
  State<CheckoutButton> createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  bool allSelected = false;

  @override
  Widget build(BuildContext context) {
    final itemProvider = Provider.of<ItemProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      alignment: Alignment.center,
      height: 67,
      width: 416,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      allSelected = !allSelected;
                    });
                  },
                  child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffDBDBDB)),
                          shape: BoxShape.circle,
                          color: allSelected ? primaryColor : Colors.white),
                      child: allSelected
                          ? const Icon(
                              Icons.done_sharp,
                              size: 10,
                              color: Colors.white,
                            )
                          : null),
                ),
                const SizedBox(width: 6),
                const Text(
                  'All',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff5A5A5A),
                  ),
                ),
              ],
            ),
          ),
          RichText(
              text: TextSpan(
                  text: 'Total: ',
                  style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff5A5A5A),
                      fontFamily: 'RobotoMedium'),
                  children: [
                TextSpan(
                    text:
                        'SAR ${itemProvider.getTotalPrice().toStringAsFixed(2)}',
                    style: const TextStyle(
                        color: primaryColor,
                        fontSize: 14,
                        fontFamily: 'RobotoMedium'))
              ])),
          InkWell(
            // onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> const CheckOut())),
            child: Container(
              alignment: Alignment.center,
              height: 37,
              width: 132,
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(5)),
              child: const Text(
                'Check Out',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
