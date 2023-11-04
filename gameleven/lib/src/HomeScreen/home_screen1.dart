import 'package:gameleven/src/consts/consts.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({
    super.key,
    required this.image,
  });
  final image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
          margin: EdgeInsets.only(bottom: 1),
          width: 70,
          decoration: BoxDecoration(
              color: Color(0xffF7F7F7), borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}

class ColorContainer extends StatelessWidget {
  const ColorContainer({super.key, required this.text, required this.Fcolor});
  final text;
  final Fcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
          width: 70,
          decoration: BoxDecoration(
              color: Fcolor, borderRadius: BorderRadius.circular(5)),
          child: Center(
              child: Text(
            text,
            style: TextStyle(fontSize: 8, color: Colors.white),
          ))),
    );
  }
}

class BrandsContainer extends StatelessWidget {
  const BrandsContainer({
    super.key,
    required this.img,
  });
  final img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
          width: 70,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Center(
              child: Center(
            child: Image.asset(
              img,
              fit: BoxFit.contain,
            ),
          ))),
    );
  }
}
