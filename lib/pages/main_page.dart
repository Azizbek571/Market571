import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_571/config/icons.dart';
import 'package:shop_571/stores/main_controller.dart';

import '../config/imports.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainController maincontroller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<MainController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.grey[100],
            
            bottomNavigationBar: 
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                    List.generate(maincontroller.menus.length, (index) {
                  var item = maincontroller.menus[index];
                  return item['id'] != 5?
                      InkWell(
                          onTap: () {
                            maincontroller.chooseCurrent(item['id']);
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                              height: 30,
                              width: 80,
                              // color: Colors.red,
                              child: SvgPicture.asset(item['icon'])),
                        )
                      : InkWell(
                        onTap: () {
                          maincontroller.chooseCurrent(4);
                        },
                        child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                          
                          // color: Colors.red,
                            width: 80,
                            height: 30,
                            child: SvgPicture.asset(AppIcons.profile),
                          ),
                      );
                }),
              ),
            ),
            body: maincontroller.choosePage(maincontroller.currentPage),
          );
        },
      ),
    );
  }
}
