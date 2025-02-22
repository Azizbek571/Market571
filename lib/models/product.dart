class ProductModel {
  int id;
  String title;
  String image;
  int price;
  int quantity;
  String unit;
  String currency;

  ProductModel({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.quantity,
    required this.unit,
    required this.currency,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      price: json["price"],
      quantity: json["quantity"],
      unit: json["unit"],
      currency: json["currency"],
    );
  }
}

List<ProductModel>productFromModel(List list){
  return List<ProductModel>.from(list.map((e)=>ProductModel.fromJson(e)));
}












// import 'dart:convert';

// Products productsFromJson(String str) => Products.fromJson(json.decode(str));

// String productsToJson(Products data) => json.encode(data.toJson());

// class Products {
//     int id;
//     String title;
//     String image;
//     int price;
//     int quantity;
//     String unit;
//     String currency;

//     Products({
//         required this.id,
//         required this.title,
//         required this.image,
//         required this.price,
//         required this.quantity,
//         required this.unit,
//         required this.currency,
//     });

//     factory Products.fromJson(Map<String, dynamic> json) => Products(
//         id: json["id"],
//         title: json["title"],
//         image: json["image"],
//         price: json["price"],
//         quantity: json["quantity"],
//         unit: json["unit"],
//         currency: json["currency"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "image": image,
//         "price": price,
//         "quantity": quantity,
//         "unit": unit,
//         "currency": currency,
//     };
// }


// import 'dart:convert';


// class Product { 
//     final int id;
//     final String name;
//     final String description;
//     final double price;
//     final String image;
//     final double rating;
//     final String brand;
//     final String? color;
//     final String? connectivity;
//     final bool? wireless;

//     Product({ 
//       required this.id,
//       required this.name,
//       required this.description,
//       required this.price,
//       required this.image,
//       required this.rating,
//       required this.brand,
//       required this.color,
//       required this.connectivity,
//       required this.wireless,
//     });


//     factory Product.fromRawJson(String str)=> Product.fromJson(json);

// Map<String, dynamic> toJson() => { 
//   "id": id, 
//   "name": name,
//   "description": description,
//   "price": price,
//   "image": image,
//   "rating": rating,
//   "brand":brand,
//   "color": color,
//   "connectivity": connectivity,
//   "wireless": wireless,
// };
// }