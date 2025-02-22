// import 'package:shop_571/config/imports.dart';
// import 'package:shop_571/pages/homepage/productdescription.dart';

// class HomeProducts extends StatelessWidget {
//   const HomeProducts({
//     super.key,
//     required this.productName,
//     required this.productImage,
//     required this.productquantity,
//     required this.productUnit,
//     required this.productPrice,
//   });

//   final List<String> productName;
//   final List<String> productImage;
//   final List<int> productquantity;
//   final List<String> productUnit;
//   final List<int> productPrice;

//   @override
//   Widget build(BuildContext context) {
//      double screenWidth = MediaQuery.of(context).size.width;
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 10),
//                 child: Text(
//                   "Aktual takliflar",
//                   style:
//                       TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.only(left: 10,),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     color: Colors.grey[100]),
//                 child: Padding(
//                   padding: const EdgeInsets.only(right: 10),
//                   child: Row(
                    
//                     children: [
//                       Text(
//                         "Hammasi",
//                         style: TextStyle(
//                             fontSize: 16,
//                             // color: Colors.,
//                             fontWeight: FontWeight.w400),
//                       ),
//                       SizedBox(width: 5),
//                       Icon(Icons.arrow_forward_ios, size: 15,)
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
    
    
    
    
    
    
//         SizedBox(
//       height: 280,
//       width: 500,
//       child: ListView.builder(
//           shrinkWrap: true,
//           scrollDirection: Axis.horizontal,
//           itemCount: productName.length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding:
//                   EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//               child: Stack(
//                 alignment: Alignment.bottomCenter,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       showBottomSheet(context: context, builder: (context)=> buildSHeet());
//                     },
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                           vertical: 20, horizontal: 12),
//                       child: Align(
//                           alignment: Alignment.topCenter,
//                           child: Image.asset(
//                               height: 100,
//                               width: 100,
//                               productImage[index])),
//                       height: 300,
//                       width: 150,
//                       decoration: BoxDecoration(
//                           color: Colors.grey[100],
//                           borderRadius: BorderRadius.circular(12)),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(12),
//                     height: 150,
//                     width: 160,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           productName[index],
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 2,
//                           style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w600),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Text(
//                               productquantity[index].toString(),
//                               style: TextStyle(
//                                   color: Colors.grey[700],
//                                   fontWeight: FontWeight.w600),
//                             ),
//                             SizedBox(
//                               width: 2,
//                             ),
//                             Text(
//                               productUnit[index],
//                               style: TextStyle(
//                                   color: Colors.grey[700],
//                                   fontWeight: FontWeight.w600),
    
//                               // overflow: TextOverflow.ellipsis,
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 12),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               productPrice[index].toString(),
//                               style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(width: 5),
//                             Text(
//                               "so'm",
//                               maxLines: 2,
//                               style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 6),
//                         Container(
                          
//                           // padding: EdgeInsets.all(12),
//                           height: 35,
//                           width: 150,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(12),
//                             color: Colors.white,
//                           ),
//                           child: Center(
//                             child: Text(
//                               // textAlign: TextAlign.center,
//                               "Savatga",
//                               style: TextStyle(fontSize: 15, ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             );
//           }),
//     ),
//       ],
//     );
//   }

//   Widget buildSHeet() => 
//   ProductDescription();
// }


