import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shop_571/components/autoscrolrow.dart';
import 'package:shop_571/pages/main_page.dart';
import 'package:shop_571/controllers/login_controller.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController _controller = TextEditingController(text: "+998");

  final maskFormatter = MaskTextInputFormatter(
      mask: '+998 ## ### ## ##', // Format: +998 XX XXX XX XX
      filter: {
        "#": RegExp(r'[0-9]'),
      },
      type: MaskAutoCompletionType.lazy);

  final List<String> imagesRow1 = [
    'assets/images/bananai.png',
    'assets/images/pampers3.png',
    'assets/images/chipsi.png',
    'assets/images/fruits.png',
    'assets/images/pastai.png',
  ];

  final List<String> imagesRow2 = [
    'assets/images/flour1.png',
    'assets/images/rice.png',
    'assets/images/baget.png',
    'assets/images/nescafe.png',
    'assets/images/forel.png',
  ];

  final List<String> imagesRow3 = [
    'assets/images/forel.png',
    'assets/images/rice.png',
    'assets/images/fruits.png',
    'assets/images/pastai.png',
    'assets/images/chipsi.png',

   
  ];

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 300,
                      width: 500,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 30,
                            spreadRadius: 15,
                            offset: Offset(4, 4)),
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 30,
                            spreadRadius: 15,
                            offset: Offset(-4, -4)),
                      ]),
                    ),

                    SizedBox(
                      height: 300,
                      width: 500,

                      // color: Colors.red,

                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            AutoScrollRow(
                                scrollSpeed: 0.5,
                                imagePaths: imagesRow1), // Forward
                            AutoScrollRow(
                                scrollSpeed: -0.5,
                                imagePaths: imagesRow2), // Backward
                            AutoScrollRow(
                                scrollSpeed: 0.5,
                                imagePaths: imagesRow3), // Forward
                          ],
                        ),
                      ),
                    ),
                    // Column(
                    //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     SizedBox(height: 270,),
                    //      Container(
                    //       decoration: BoxDecoration(
                    //         color: Color.fromARGB(255, 246, 243, 243),
                    //         borderRadius: BorderRadius.circular(15)
                    //       ),
                    //       height: 100,
                    //       width: 100,
                    //       child:
                    //       Image.asset('assets/images/logo3.png'),
                    //       // Image.asset('assets/images/logo2.webp'),
                    //       )
                    //   ],
                    // ),
                  ],
                ),
              ),
              Container(
                // color: Colors.red,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 30,
                      spreadRadius: 15,
                      offset: Offset(4, 4)),
                  BoxShadow(
                      color: Colors.white,
                      blurRadius: 30,
                      spreadRadius: 15,
                      offset: Offset(-4, -4)),
                ]),

                height: 500,
                width: 400,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15)),
                        height: 80,
                        width: 80,
                        child: Image.asset('assets/images/logo4.png'),
                        // Image.asset('assets/images/logo2.webp'),
                      ),
                    ),
                    Text(
                      "Market 571",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Телефон ракамингизни киритинг",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 3),
                      child: TextField(
                        controller: _controller,
                        keyboardType: TextInputType.phone,
                        // maxLength: 13,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^\+998[0-9]*$'))
                        ],
                        //             validator: (value) {
                        //              if (value == null || value.length != 17) { // Length of formatted number
                        //   return "Enter a valid Uzbekistan number (+998 XX XXX XX XX)";
                        // }
                        // return null;
                        //             },
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey.shade300),
                          // labelText: "Тел ракамингизни киритинг",
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300)),
                          hintText: "+998 91 8794651",
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Get.to(OtpForm());
                        Get.to(() => MainPage());
                        

                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: Container(
                          width: 400,
                          height: 47,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.orange
                              ),
                          child: Center(
                            child: Text(
                              "Kirish",
                              //FF9A00
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
