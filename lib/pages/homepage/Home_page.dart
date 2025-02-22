import 'package:shop_571/config/imports.dart';
import 'package:shop_571/controllers/product_controller.dart';
import 'package:shop_571/models/product.dart';
import 'package:shop_571/pages/cartpage.dart';
import 'package:shop_571/pages/homepage/homeproductsbest.dart';
import 'package:shop_571/pages/homepage/homeproductsoffers.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // backgroundColor: Colors.white,
          appBar: AppBar(
            // backgroundColor: Colors.grey[100],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_pin),
                SizedBox(width: 5),
                Flexible(
                  child: Text(
                    "Do'stlik 77",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                     Get.to(() => CartPage());
                  },
                  icon: Icon(Icons.shopping_cart))
            ],
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          ),
          body: SingleChildScrollView(
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 500),
                      child: TextField(
                        decoration: InputDecoration(
                          // focusedBorder: ,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          fillColor: Colors.grey[100],
                          filled: true,

                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          hintText: "Qidirish",
                          // suffixIcon: Icon(Icons.search),
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide()),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Aktual takliflar",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey[100]),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text(
                                "Hammasi",
                                style: TextStyle(
                                    fontSize: 16,
                                    // color: Colors.,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

       SizedBox(
         height: 280,
      width: 500,
         child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.products.length,
          itemBuilder: (context, index){ 
            var item = controller.products[index];
           return 
                  ProductItem(item: item,
                  onTap:(){ controller.addtocart(item);}
                  );
         
         }),
       ),
       SizedBox(
         height: 280,
      width: 500,
         child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.products.length,
          itemBuilder: (context, index){ 
            var item = controller.products[index];

           return 
                  ProductItem(item: item,
                  onTap:(){ controller.addtocart(item);}
                  
                  );
                  
         
         }),
       ),
              ],
            ),
          )),
    );
  }
}


