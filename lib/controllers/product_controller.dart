import 'package:shop_571/config/imports.dart';
import 'package:shop_571/database/products.dart';
import 'package:shop_571/models/product.dart';
import 'package:get_storage/get_storage.dart';

class ProductController extends GetxController {
  List<ProductModel> products = productFromModel(AppDatabase.products);

  GetStorage base = GetStorage();

  List cartProducts = [];

  fetchCartProducts() {
    cartProducts = base.read('cart-product') ?? [];
  }

  addtocart(ProductModel product) async {
    await fetchCartProducts();
    // print(cartProducts);

    var index =
        cartProducts.indexWhere((element) => element['id'] == product.id);
    if (index > -1) {
      cartProducts[index]['count']++;
    } else {
      cartProducts.add({
        "id": product.id,
        "image": product.image,
        "title": product.title,
        "price": product.price,
        "quantity": product.quantity,
        "unit": product.unit,

        "count": 1
      });
    
    }
    base.write('cart-product', cartProducts);
    // print(cartProducts);
    Get.snackbar("Успешно!", "Махсулот саватга кушилди!",
    // snackStyle:SnackStyle.GROUNDED,
    // snackPosition: SnackPosition.BOTTOM,
    // colorText: Colors.white,
    duration: Duration(seconds: 1),
    backgroundColor: const Color.fromARGB(255, 121, 240, 125)
    );
  }
}







// import 'package:get/get.dart';

// class CartController extends GetxController {
//   var cartItems = <Map<String, dynamic>>[].obs;

//   void addToCart(String name, int quantity, double price) {
//     cartItems.add({
//       "name": name,
//       "quantity": quantity,
//       "price": price,
//     });

//     Get.snackbar("Success", "Added to cart", snackPosition: SnackPosition.BOTTOM);
//   }
// }




