


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_571/pages/homepage/Home_page.dart';
// import 'package:shop_571/pages/auth/Login_page.dart';
import 'package:shop_571/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Simulating a delay, then navigating
    Future.delayed(Duration(seconds: 3), () {
      bool isUserLoggedIn = false; // Change this manually for testing

      if (isUserLoggedIn) {
        Get.off(() => HomePage()); // ✅ Fixed Syntax
      } else {
        Get.offAll(() => LoginPage()); // ✅ Fixed Syntax
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent, // Splash screen background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              "Market 571",
              style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            // Spacer(),
            SizedBox(height: 100,),
            ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15)),
                        height: 130,
                        width: 130,
                        child: Image.asset('assets/images/logo4.png'),
                        // Image.asset('assets/images/logo2.webp'),
                      ),
                    ), // Logo/Icon
            SizedBox(height: 20),
            

            Text(
              "Online do'konimizga hush kelibsiz!",
              style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}




// How It Works
// App opens → Displays splash screen for 2 seconds
// Checks isUserLoggedIn (manual for now, but replace with auth logic later)
// If user is logged in → Goes to HomePage()
// If user is NOT logged in → Goes to LoginPage()
// Next Steps
// 🔧 Replace bool isUserLoggedIn = false; with real authentication logic later.
// 🎨 Customize the splash screen with animations, images, or branding.
// 🚀 Add a fade-in effect using AnimatedOpacity or TweenAnimationBuilder.


















// import 'package:get_storage/get_storage.dart';
// import 'package:shop_571/config/imports.dart';
// import 'package:shop_571/pages/homepage/Home_page.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {

// init()async{
//    var user = await GetStorage().read('user');
//   await Future.delayed(Duration(seconds: 2));
//    if(user!=null){
//     Get.off(()=> HomePage());
//    }else{
//        Get.off(()=> LoginPage());

//    }
// }


// @override
//   void initState() {
//     init();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Center(child: Text("Hush kelibsiz"),),);
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:shop_571/pages/homepage/Home_page.dart';
// import 'package:shop_571/pages/login_page.dart';
// // import 'package:shop_571/pages/auth/Login_page.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();

//     // Simulating a delay, then navigating
//     Future.delayed(Duration(seconds: 2), () {
//       bool isUserLoggedIn = false; // Change this manually for testing

//       if (isUserLoggedIn) {
//         Get.offAll(() => HomePage()); // Navigate to Home if logged in
//       } else {
//         Get.offAll(() => LoginPage()); // Navigate to Login if not
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueAccent, // Splash screen background
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.shopping_cart, size: 100, color: Colors.white), // Logo/Icon
//             SizedBox(height: 20),
//             Text(
//               "Welcome to Shop 571",
//               style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }










