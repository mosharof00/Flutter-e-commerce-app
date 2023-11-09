import 'package:gameleven/src/consts/consts.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: 30,
                    left: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(Icons.arrow_back_outlined, size: 22),
                        ),
                      ),
                      Text(
                        "Wishlist",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
