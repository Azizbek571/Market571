
import 'package:shop_571/controllers/product_controller.dart';
import 'package:shop_571/models/product.dart';
import 'package:shop_571/pages/homepage/productdescription.dart';

import '../../config/imports.dart';

class ProductItem extends StatelessWidget {
    ProductItem({
    required this.item,
    required this.onTap,
    super.key,
  });
  ProductModel item;
    Function onTap;

  ProductController cartcontroller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          InkWell(
            onTap: () {
               showBottomSheet(context: context, builder: (context)=> buildSHeet());
            },
            child: Container(
              padding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 12),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                    height: 100,
                    width: 100,
                    item.image),
              ),
              height: 300,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          
          
          
       Container(
        padding: EdgeInsets.all(12),
        height: 150,
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  item.quantity.toString(),
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  item.unit,
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w600),
        
                  // overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.price.toString(),
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text(
                  item.currency,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 6),
            InkWell(
              onTap: () {
                onTap();
              },
              child: Container(
                
                // padding: EdgeInsets.all(12),
                height: 35,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    // textAlign: TextAlign.center,
                    "Savatga",
                    style: TextStyle(fontSize: 15, ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          
          
        ],
      ),
    );
  }

   Widget buildSHeet() => 
  ProductDescription(
    item: cartcontroller.products[0],
  );
}
