import 'package:gameleven/src/Category/category_widgets.dart';
import 'package:gameleven/src/consts/consts.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secoundaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            children: [
              Container(
                height: 45,
                color: secoundaryColor,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 30,
                    left: 8,
                  ),
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
                          child: Icon(Icons.arrow_back_outlined, size: 22),
                        ),
                      ),
                      Text(
                        "Categories",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 593,
                      width: 125,
                      color: secoundaryColor,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: categoryImageLists.length,
                          itemBuilder: (context, index) {
                            return CategoryWodgitS(
                                image: categoryImageLists[index],
                                text: categorySlist[index],
                                color: categoryColor[index]);
                          }),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 2),
                          child: Container(
                              height: 45,
                              width: 220,
                              decoration: BoxDecoration(
                                color: secoundaryColor,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 2,
                                      offset: Offset(0, 3))
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Gaming Device"),
                                ],
                              )),
                        ),
                        Container(
                          height: 540,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: categorySlist2.length,
                                itemBuilder: (context, index) {
                                  return CategoryList1(
                                      text: categorySlist2[index]);
                                }),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
