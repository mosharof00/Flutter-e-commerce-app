// class Cart {
//   late final int? id;
//   final String? productId;
//   final String? productName;
//   final int? initialProce;
//   final int? productProce;
//   final int? quantity;
//   final String? unitTag;
//   final String? image;

//   Cart({
//     required this.id,
//     required this.productId,
//     required this.initialProce,
//     required this.productName,
//     required this.productProce,
//     required this.quantity,
//     required this.unitTag,
//     required this.image,
//   });

//   Cart.fromMap(Map<dynamic, dynamic> res)
//       : id = res["id"],
//         productId = res["productId"],
//         productName = res["productName"],
//         initialProce = res["initialProce"],
//         productProce = res["productProce"],
//         quantity = res["productProce"],
//         unitTag = res["unitTag"],
//         image = res["image"];

//   Map<String, Object?> toMap() {
//     return {
//       'id': id,
//       'productId': productId,
//       'productName': productName,
//       'initialProce': initialProce,
//       'productProce': productProce,
//       'quantity ': quantity,
//       'unitTag ': unitTag,
//       'image ': image
//     };
//   }
// }
