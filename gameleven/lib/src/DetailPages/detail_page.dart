import 'package:gameleven/src/consts/consts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            alignment: Alignment.topCenter,
            height: 270,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage(headphones), fit: BoxFit.scaleDown)),
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
          )
        ]),
      ),
    );
  }
}
