import 'package:get_storage/get_storage.dart';
import 'package:shop_571/config/imports.dart';

class CartController extends GetxController {
  GetStorage base = GetStorage();
  List cartProducts =[];


  fetchCartProducts(){
   cartProducts=base.read("cart-product") ?? []; 
   update();
  }

   updateBase(){
    base.write('cart-product', cartProducts);
   }

   add(int id){  
    var index = cartProducts.indexWhere((el) => el['id']==id);
    if(index>-1){
      cartProducts[index]['count']++;
      fetchCartProducts();
      updateBase();
    }
  }
   remove(int id){
    var index = cartProducts.indexWhere((el) => el['id']==id);
    if(index>-1){
      if(cartProducts[index]['count']==1){
         cartProducts.removeAt(index);
      }else{
       cartProducts[index]['count']--;
         
      }
      fetchCartProducts();
      updateBase();
    }
  }


    delete(int id){
          var index = cartProducts.indexWhere((el) => el['id']==id);
         cartProducts.removeAt(index);


    }
 }