import 'package:gameleven/src/consts/consts.dart';

class CategoryWodgitS extends StatelessWidget {
  const CategoryWodgitS(
      {super.key,
      required this.image,
      required this.text,
      required this.color});
  final image;
  final text;
  final color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121,
      color: color,
      child: Column(children: [
        Expanded(
            child: Container(
          height: 40,
          width: 65,
          child: Center(
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
        )),
        Expanded(
            child: Container(
          height: 35,
          width: 70,
          child: Center(
            child: Text(text),
          ),
        )),
      ]),
    );
  }
}

class CategoryList1 extends StatelessWidget {
  const CategoryList1({super.key, required this.text});

  final text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: secoundaryColor,
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 2, offset: Offset(0, 3))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                height: 40,
                width: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(categoryLine),
                    Image.asset(categoryDownArrow)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
