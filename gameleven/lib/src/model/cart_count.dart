import 'package:gameleven/src/consts/consts.dart';

class CartCount extends StatelessWidget {
  dynamic minimizeTap, addTap;
  String counterText;
  CartCount(
      {super.key,
      required this.minimizeTap,
      required this.addTap,
      required this.counterText});

  @override
  Widget build(BuildContext context) {
    var cartController = Provider.of<ItemProvider>(context);
    return SizedBox(
      height: 28,
      width: 96,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
                color: const Color(0xffF0F0F0),
                borderRadius: BorderRadius.circular(3)),
            child: InkWell(
                onTap: minimizeTap,
                child: const Icon(
                  Icons.remove,
                  color: Color(0xff837A7A),
                )),
          ),
          Text(
            counterText,
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xff837A7A),
            ),
          ),
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
                color: const Color(0xffF0F0F0),
                borderRadius: BorderRadius.circular(3)),
            child: InkWell(
                onTap: addTap,
                child: const Icon(
                  Icons.add,
                  color: Color(0xff837A7A),
                )),
          )
        ],
      ),
    );
  }
}
