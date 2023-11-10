// import 'package:gameleven/src/Cart%20Screen/cart_model.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path_provider/path_provider.dart';
// // ignore: depend_on_referenced_packages
// import 'package:path/path.dart';
// import 'dart:io' as io;

// class DbHelper {
//   static Database? _db;
//   // ignore: body_might_complete_normally_nullable
//   Future<Database?> get db async {
//     if (_db != null) {
//       return _db!;
//     }
//     _db = await initDatabase();
//   }

//   initDatabase() async {
//     io.Directory documentDirectory = await getApplicationCacheDirectory();
//     String path = join(documentDirectory.path, "cart.db");
//     // ignore: unused_local_variable
//     var db = await openDatabase(
//       path,
//       version: 1,
//       onCreate: _onCreate,
//     );
//   }

//   _onCreate(Database db, int version) async {
//     await db.execute(
//         'CREATE TABLE cart (id INTEGER PRIMARY KEY, productId VARCHAR UNIQUE, productName TEXT, initialProce INTEGER, productProce INTEGER ,quantity INTEGER, unitTag TEXT,image TEXT )');
//   }

//   Future<Cart> insert(Cart cart) async {
//     var dbClient = await db;
//     await dbClient!.insert('cart', cart.toMap());
//     return cart;
//   }
// }
