import 'package:shop_571/controllers/cart_controller.dart';
import '../config/imports.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  CartController controller = Get.put(CartController());
  // ProductController _controller = Get.put(ProductController());

  @override
  void initState() {
    controller.fetchCartProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Savatcha"),
          ),
         
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Stack(
              
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,

                  // color: Colors.red,
                  // constraints: BoxConstraints(maxWidth: 500),
                  child: 
                   ListView.builder(
                      itemCount: controller.cartProducts.length,
                      itemBuilder: (context, index){
                        var item = controller.cartProducts[index];
                        return CartProduct(
                          title: item['title'],
                          price: item['price'],
                          image: item['image']?? 'assets/images/baget.jpg',
                          quantity: item['quantity']?? 0,
                          unit: item['unit']?? '',
                          count: item['count'],
                          add:(){
                            controller.add(item['id']);
                          },
                          remove:(){
                            controller.remove(item['id']);
                          }
                
                        );
                     }),
                     
                ),
                Padding(

                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                                      height: 120,

                                      width: MediaQuery.of(context).size.width,

                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight:Radius.circular(15) )
                    ),
                    child: 
                    Column(
                      
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                           
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                             
                          
                              Text("Mahsulot jami narxi:", 
                              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                              ),
                              SizedBox(width: 5,),
                              Text("12000000", 
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12),
                        ElevatedButton(onPressed: (){

                        }, child: Text("Buyurtma berish",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                        
                        ))

                      ],
                    ),),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
class CartProduct extends StatelessWidget {
   CartProduct({
    
    super.key,
    required this.title,
    required this.image,
    required this.unit,
    required this.price,
    required this.quantity,
    required this.count,
    required this.add,
    required this.remove

  });
  final String title, image,  unit;
  final int price, quantity,count;
  Function add, remove;


  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            // 'assets/images/baget.jpg',
            height: 70,
            width: 70,
          ),
          SizedBox(width: 15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            // color: Colors.red,
            width: 290,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 16),
                ),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: quantity.toString(),
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(text: unit),
                  ]),
                ),
                SizedBox(height: 10),
                Container(
                  // color: Colors.red,
                  width: 300,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){ 
                        remove();
                      }, icon: Icon(Icons.remove)  ),
                              SizedBox(width: 6),          
    
                      Text(count.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                              SizedBox(width: 6),          
    
                  IconButton(onPressed: (){
                    add();
                   }, icon: Icon(Icons.add, color: Colors.green,)  ),
                              SizedBox(width: 40),          
                  Text(price.toString(),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  
                  ),
                  SizedBox(width: 5),
                  
                  Text("so'm",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  
                  ),
                  
                  
                    ],
                  ),
                ),
              ],
            ),
          ),
          IconButton(onPressed: (){ 
                      remove();
         

          }
          , icon: Icon(Icons.delete))
        ],
      ),
    ));
  }
}














// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:shop_571/controllers/product_controller.dart';


// class CartPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final CartController cartController = Get.find<CartController>();

//     return Scaffold(
//       appBar: AppBar(title: const Text("Cart")),
//       body: Obx(() => cartController.cartItems.isEmpty
//           ? const Center(child: Text("Your cart is empty"))
//           : ListView.builder(
//               itemCount: cartController.cartItems.length,
//               itemBuilder: (context, index) {
//                 final item = cartController.cartItems[index];
//                 return ListTile(
//                   title: Text(item["name"]),
//                   subtitle: Text("Quantity: ${item["quantity"]}"),
//                   trailing: Text("Price: ${item["price"]} so'm"),
//                 );
//               },
//             )),
//     );
//   }
// }