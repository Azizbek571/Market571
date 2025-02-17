import 'package:shop_571/config/icons.dart';
import 'package:shop_571/config/imports.dart';
import 'package:shop_571/pages/Home_page.dart';
import 'package:shop_571/pages/cartpage.dart';
import 'package:shop_571/pages/favourite.dart';
import 'package:shop_571/pages/profile.dart';
import 'package:shop_571/pages/searchpage.dart';

class MainController extends GetxController {
  int currentPage = 1;
  List menus = [
    {"id": 1, "icon": AppIcons.home},
    {"id": 2, "icon": AppIcons.search},
    {"id": 3, "icon": AppIcons.cart},
    {"id": 4, "icon": AppIcons.like},
    {"id": 5, "icon": AppIcons.profile},
   
  ];

  void chooseCurrent(int index){ 
    currentPage = index;
    update();
  }

  Widget choosePage(int index) {
    switch (index) {
      case 1:
        return  HomePage();
      case 2:
        return SearchPage();
      case 3:
        return CartPage();
      case 4:
        return Favourite();
      case 5:
        return ProfilePage();
      
    }
    return Container();
  }
}
