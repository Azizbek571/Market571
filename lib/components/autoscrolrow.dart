import 'dart:async';

import 'package:flutter/material.dart';

class AutoScrollRow extends StatefulWidget {
  final double scrollSpeed;
  final List<String> imagePaths;

  AutoScrollRow({required this.scrollSpeed, required this.imagePaths});

  @override
  _AutoScrollRowState createState() => _AutoScrollRowState();
}

class _AutoScrollRowState extends State<AutoScrollRow> {
  late ScrollController _scrollController;
  late Timer _timer;
  late List<String> infiniteImages;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    // Duplicate images for smooth infinite scrolling
    infiniteImages = List.generate(widget.imagePaths.length * 10,
        (index) => widget.imagePaths[index % widget.imagePaths.length]);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Start in the middle of the list to prevent an abrupt stop
      double middlePosition = _scrollController.position.maxScrollExtent / 2;
      _scrollController.jumpTo(middlePosition);
      _startAutoScroll();
    });
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(milliseconds: 30), (timer) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.offset + widget.scrollSpeed);
        if (_scrollController.offset >= _scrollController.position.maxScrollExtent - 200) {
          // Smoothly reset to the middle
          _scrollController.jumpTo(_scrollController.position.minScrollExtent + 200);
        } else if (_scrollController.offset <= _scrollController.position.minScrollExtent + 200) {
          // Smoothly reset to the middle
          _scrollController.jumpTo(_scrollController.position.maxScrollExtent - 200);
        }
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemCount: infiniteImages.length,
        itemBuilder: (context, index) {
          return Container(
             decoration: BoxDecoration( 
              color: Color.fromARGB(255, 243, 252, 252),
              borderRadius: BorderRadiusDirectional.circular(12)
             ),
            width: 85,
            margin: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                infiniteImages[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}











// import 'dart:async';

// import 'package:flutter/material.dart';

// class AutoScrollRow extends StatefulWidget {
//   final double scrollSpeed;
//   final List<String> imagePaths;

//   AutoScrollRow({required this.scrollSpeed, required this.imagePaths});

//   @override
//   _AutoScrollRowState createState() => _AutoScrollRowState();
// }

// class _AutoScrollRowState extends State<AutoScrollRow> {
//   final ScrollController _scrollController = ScrollController();
//   late Timer _timer;
//   double _scrollPosition = 0.0;

//   // late List<String> _infiniteImages;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) => _startAutoScroll());
//   }

//   void _startAutoScroll() {
//     _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
//       if (_scrollController.hasClients) {
//         _scrollPosition += widget.scrollSpeed;
//         if (_scrollPosition >= _scrollController.position.maxScrollExtent) {
//           _scrollPosition = 0; // Reset to start
//         } else if (_scrollPosition <= 0) {
//           _scrollPosition = _scrollController.position.maxScrollExtent; // Reset to end
//         }
//         _scrollController.jumpTo(_scrollPosition);
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 120,
//       // width: 90,
//     //  color: Color.fromARGB(255, 243, 252, 252),
//     // color: Colors.red,

//       child: ListView.builder(
//         controller: _scrollController,
//         scrollDirection: Axis.horizontal,
//         itemCount: widget.imagePaths.length,
//         itemBuilder: (context, index) {
//           return Container(
//             width: 85,
//             margin: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//                                    color: Color.fromARGB(255, 243, 252, 252),

//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: Image.asset(
//                 widget.imagePaths[index], // Uses provided image list
//                 fit: BoxFit.cover,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


















// // import 'dart:async';
// // import 'package:flutter/material.dart';
// // import 'package:market_571/config/images.dart';

// // class AutoScrollRow extends StatefulWidget {
// //   final double scrollSpeed;

// //   AutoScrollRow({required this.scrollSpeed});

// //   @override
// //   _AutoScrollRowState createState() => _AutoScrollRowState();
// // }

// // class _AutoScrollRowState extends State<AutoScrollRow> {
// //   final ScrollController _scrollController = ScrollController();
// //   late Timer _timer;
// //   double _scrollPosition = 0.0;

// //   @override
// //   void initState() {
// //     super.initState();
// //     WidgetsBinding.instance.addPostFrameCallback((_) => _startAutoScroll());
// //   }

// //   void _startAutoScroll() {
// //     _timer = Timer.periodic(Duration(milliseconds: 60), (timer) {
// //       if (_scrollController.hasClients) {
// //         _scrollPosition += widget.scrollSpeed;
// //         if (_scrollPosition >= _scrollController.position.maxScrollExtent) {
// //           _scrollPosition = 0; // Reset to start
// //         } else if (_scrollPosition <= 0) {
// //           _scrollPosition = _scrollController.position.maxScrollExtent; // Reset to end
// //         }
// //         _scrollController.jumpTo(_scrollPosition);
// //       }
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     _timer.cancel();
// //     _scrollController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       // color: Colors.red,
// //       height: 130,
// //       // width: 90,
// //       child: ListView.builder(
// //         controller: _scrollController,
// //         scrollDirection: Axis.horizontal,
// //         itemCount: 30,
// //         itemBuilder: (context, index) {
// //           return Container(
// //             width: 90,
// //             margin: EdgeInsets.all(8),
// //             decoration: BoxDecoration(
// //               color: Colors.blue[(index % 9 + 1) * 100],
// //               borderRadius: BorderRadius.circular(12),
// //             ),
// //             child: Center(
// //               child: Image.asset('assets/images/image_$index.png')
// //               //  Text('Item $index', style: TextStyle(color: Colors.white),
              
// //               // ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }




// import 'dart:async';

// import 'package:flutter/material.dart';

// class AutoScrollRow extends StatefulWidget {
//   final double scrollSpeed;

//   AutoScrollRow({required this.scrollSpeed});

//   @override
//   _AutoScrollRowState createState() => _AutoScrollRowState();
// }

// class _AutoScrollRowState extends State<AutoScrollRow> {
//   final ScrollController _scrollController = ScrollController();
//   late Timer _timer;
//   double _scrollPosition = 0.0;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) => _startAutoScroll());
//   }

//   void _startAutoScroll() {
//     _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
//       if (_scrollController.hasClients) {
//         _scrollPosition += widget.scrollSpeed;
//         if (_scrollPosition >= _scrollController.position.maxScrollExtent) {
//           _scrollPosition = 0; // Reset to start
//         } else if (_scrollPosition <= 0) {
//           _scrollPosition = _scrollController.position.maxScrollExtent; // Reset to end
//         }
//         _scrollController.jumpTo(_scrollPosition);
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 120,
//       child: ListView.builder(
//         controller: _scrollController,
//         scrollDirection: Axis.horizontal,
//         itemCount: 20,
//         itemBuilder: (context, index) {
//           return Container(
//             width: 120,
//             margin: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: Image.asset(
//                 'assets/images/image_$index.jpg', // Replace with your image paths
//                 fit: BoxFit.cover,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }