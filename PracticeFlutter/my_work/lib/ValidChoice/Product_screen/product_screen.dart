// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// class ProductScreen extends StatefulWidget {
//   const ProductScreen({Key? key}) : super(key: key);

//   @override
//   State<ProductScreen> createState() => _ProductScreenState();
// }

// class _ProductScreenState extends State<ProductScreen> {
//   final List<String> images = [
//     'assets/V1.jpg',
//     'assets/V2.jpg',
//     'assets/V3.jpg',
//     'assets/V4.jpg',
//     'assets/V5.jpg',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(22.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CarouselSlider(
//                   items: images.map((image) {
//                     return Image.asset(
//                       image,
//                       fit: BoxFit.cover,
//                       width: double.infinity,
//                     );
//                   }).toList(),
//                   options: CarouselOptions(
//                     height: 200.0,
//                     initialPage: 0,
//                     enableInfiniteScroll: true,
//                     autoPlay: true,
//                     autoPlayInterval: Duration(seconds: 3),
//                     autoPlayAnimationDuration: Duration(milliseconds: 800),
//                     autoPlayCurve: Curves.fastOutSlowIn,
//                     enlargeCenterPage: true,
//                     viewportFraction: 0.8,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 // Divider(
//                 //   color: Colors.grey,
//                 //   height: 1,
//                 // ),
//                 // SizedBox(height: 20),
//                 GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 4,
//                     mainAxisSpacing: 10,
//                     crossAxisSpacing: 10,
//                   ),
//                   shrinkWrap: true,
//                   itemCount: images.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Image.asset(
//                       images[index],
//                       fit: BoxFit.cover,
//                     );
//                   },
//                 ),
//                 SizedBox(height: 10),
//                 Divider(
//                   color: Colors.grey.shade300,
//                   height: 1,
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "BESTSELLER | LATEST SEASON",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Divider(
//                   color: Colors.grey.shade300,
//                   height: 1,
//                 ),
//                 SizedBox(height: 10),
//                 RichText(
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: "ETHNIC JAIPURI 90×108\n",
//                         style: TextStyle(
//                           color: Color(0xFF115144),
//                           fontSize: 21,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       TextSpan(
//                         text: "BEDSHEET EJ-40",
//                         style: TextStyle(
//                           color: Color(0xFF115144),
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   textAlign: TextAlign.start,
//                 ),
//                 SizedBox(height: 10),
//                 Divider(
//                   color: Colors.grey.shade300,
//                   height: 1,
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   children: [
//                     Text(
//                       "\u20B9 999",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       "28% off",
//                       style: TextStyle(
//                         color: Colors.green,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Text.rich(
//                   TextSpan(
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: "MRP ",
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 18,
//                         ),
//                       ),
//                       TextSpan(
//                         text: "\u20B91580",
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 18,
//                           decoration: TextDecoration.lineThrough,
//                         ),
//                       ),
//                       TextSpan(
//                         text: " inclusive of all taxes",
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Divider(
//                   color: Colors.grey.shade300,
//                   height: 1,
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.favorite_border_outlined,
//                         color: Colors.black,
//                         size: 30,
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: Text(
//                         "Add to Cart",
//                       ),
//                       style: ElevatedButton.styleFrom(
//                         elevation: 0,
//                         fixedSize: Size(220, 30),
//                         primary: Color(0xFFEF3547),
//                         shape: RoundedRectangleBorder(
//                             // borderRadius: BorderRadius.circular(25)
//                             ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10),
//                 Divider(
//                   color: Colors.grey.shade300,
//                   height: 1,
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "DESCRIPTION",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 18,
//                   ),
//                 ),

//                 SizedBox(height: 20),
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.fiber_manual_record,
//                       size: 5,
//                       color: Colors.black,
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     RichText(
//                       text: TextSpan(
//                         children: [
//                           TextSpan(
//                             text: "Material - ",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           TextSpan(
//                             text: "Pure cotton",
//                             style: TextStyle(
//                               color: Colors.grey,
//                               // fontWeight:
//                               //     FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.fiber_manual_record,
//                       size: 5,
//                       color: Colors.black,
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     RichText(
//                       text: TextSpan(
//                         children: [
//                           TextSpan(
//                             text: "Thread Count - ",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           TextSpan(
//                             text: "144 Tc",
//                             style: TextStyle(
//                               color: Colors.grey,
//                               // fontWeight:
//                               //     FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.fiber_manual_record,
//                       size: 5,
//                       color: Colors.black,
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     RichText(
//                       text: TextSpan(
//                         children: [
//                           TextSpan(
//                             text: "Bedsheet Size - ",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           TextSpan(
//                             text: "90×108 Inch",
//                             style: TextStyle(
//                               color: Colors.grey,
//                               // fontWeight:
//                               //     FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.fiber_manual_record,
//                       size: 5,
//                       color: Colors.black,
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     RichText(
//                       text: TextSpan(
//                         children: [
//                           TextSpan(
//                             text: "Pillow Size - ",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           TextSpan(
//                             text: "17×27 Inch",
//                             style: TextStyle(
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),

//                 Text(
//                   "Screen Printing... Fast Colours. Premium\n" "Quality Cotton",
//                   style: TextStyle(
//                     color: Colors.grey,
//                     // fontWeight:
//                     //     FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Divider(
//                   color: Colors.grey.shade300,
//                   height: 1,
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   children: [
//                     RatingBar.builder(
//                       initialRating: 3,
//                       minRating: 1,
//                       direction: Axis.horizontal,
//                       allowHalfRating: true,
//                       itemCount: 5,
//                       itemSize: 22,
//                       itemBuilder: (context, _) => Icon(
//                         Icons.star,
//                         color: Colors.amber,
//                       ),
//                       onRatingUpdate: (rating) {
//                         print(rating);
//                       },
//                     ),
//                     SizedBox(width: 10),
//                     Text(
//                       "3.2/5 (Based on 85 ratings)",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 15,
//                         // fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10),
//                 Divider(
//                   color: Colors.grey.shade300,
//                   height: 1,
//                 ),
//                 SizedBox(height: 10),

//                 RichText(
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'SKU:',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'EJ-40',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 RichText(
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'Categories:',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'Bedsheet,Ethnic Jaipuri 90×108',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 RichText(
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'Tags:',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'libra, light blue, तुला',
//                         style: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
                  
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
