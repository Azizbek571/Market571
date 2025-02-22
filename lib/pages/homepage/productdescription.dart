import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_571/config/icons.dart';
import 'package:shop_571/config/imports.dart';
import 'package:shop_571/controllers/product_controller.dart';
import 'package:shop_571/models/product.dart';

class ProductDescription extends StatelessWidget {
  //   final String productName;
  // final String productImage;
  // final int productQuantity;
  // final String productUnit;
  // final int productPrice;
      ProductDescription({
  required this.item,
    super.key,
    //  required this.productName,
    // required this.productImage,
    // required this.productQuantity,
    // required this.productUnit,
    // required this.productPrice,
  });
  //  CartController _controllercart = Get.put(CartController());
  ProductModel item;
   final ProductController cartController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Container( 
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 800,
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
       color: Colors.grey[200]
      // color: Colors.red
      ),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 19),
          child: Center(child:  Image.asset('assets/images/bananai.png',
          height: 300,
          width: 200,
          ),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(cartController.products[1].title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),),
            Container(
              // color: Colors.red,
              height: 50,
              width: 50,
              child: IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.like),
                        
              ),
            )
          ],
        ),
        Row(
          children: [
            Text("1", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500),),
            SizedBox(width: 5),
            Text("kg", style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500),),
            SizedBox(width: 12),

            Text("so'm", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500),),
          ],
        ),
         Spacer(),
        InkWell(
          onTap: () {
            // cartController.addToCart("Banana", 1, 11200);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(15)),
            width: 400,
            height: 60,
            
            child:   Center(
              child: Text("Savatga qo'shish", 
              
              textAlign: TextAlign.center,
                        style: TextStyle(
                          // color: const Color.fromARGB(255, 237, 231, 231),
                          fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
           ),
         ),
     ],),
    );
  }
}