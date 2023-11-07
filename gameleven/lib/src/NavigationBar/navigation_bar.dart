import 'package:gameleven/src/Category/category_screen.dart';
import 'package:gameleven/src/consts/consts.dart';

class NavigationBarMain extends StatelessWidget {
  const NavigationBarMain({super.key});

  @override
  Widget build(BuildContext context) {
    //init home controller
    var controller = Get.put(HomeScreenController());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(categoryIcon), label: "Category "),
      BottomNavigationBarItem(
          icon: Image.asset(favoriteIcon), label: "Wishlist"),
      BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(color: primaryColor, shape: BoxShape.circle),
              child: Image.asset(
                homeIcon,
                fit: BoxFit.contain,
              ),
            ),
          ),
          label: ""),
      BottomNavigationBarItem(icon: Image.asset(cartIcon), label: "Cart"),
      BottomNavigationBarItem(icon: Image.asset(accountIcon), label: "Account"),
    ];
    var navBody = [
      CategoryScreen(),
      Container(color: secoundaryColor),
      HomeScreen(),
      Container(color: parakeet),
      Container(color: blue)
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          backgroundColor: secoundaryColor,

          // iconSize: 40,
          selectedItemColor: primaryColor,
          type: BottomNavigationBarType.fixed,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
