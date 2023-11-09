import 'package:gameleven/src/consts/consts.dart';

class CheckoutInfoScreen extends StatelessWidget {
  const CheckoutInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 30, left: 8, top: 40),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(Icons.arrow_back_outlined,
                              size: 22, color: black),
                        ),
                      ),
                      const Text(
                        "Checkout Information",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
