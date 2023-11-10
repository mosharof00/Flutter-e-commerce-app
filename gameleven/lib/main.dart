import 'package:gameleven/src/Controller/item_provider.dart';
import 'package:gameleven/src/consts/consts.dart';
import 'package:gameleven/src/skip_pages/splash.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Using GetX so, I have to change this Material app to GetMaterialApp
    return MultiProvider(
      providers: [
        //ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => ItemProvider()),
      ],
      child: Builder(builder: (BuildContext context) {
        return GetMaterialApp(
            title: "Gameleven",
            theme: ThemeData(
                textTheme:
                    GoogleFonts.manropeTextTheme(Theme.of(context).textTheme),
                scaffoldBackgroundColor: secoundaryColor),
            debugShowCheckedModeBanner: false,
            home: const SplashScreen());
      }),
    );
  }
}