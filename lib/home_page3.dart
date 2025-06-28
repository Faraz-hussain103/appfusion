
// import 'package:flutter/material.dart';

// class HomePage3 extends StatelessWidget {
//   const HomePage3({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // Profile Heading
//           Padding(
//             padding: const EdgeInsets.only(top: 90),
//             child: Align(
//               alignment: Alignment.topCenter,
//               child: Text(
//                 'Profile',
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontFamily: 'Roboto',
//                   color: Color(0xff212121),
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//           ),

//           const SizedBox(height: 20),

//           // Profile Info Box
//           Container(
//             height: 100,
//             width: 300,
//             padding: EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(5),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.05),
//                   blurRadius: 4,
//                   offset: Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Text on the left
//                 Expanded(
//                   child: Align(
//                     alignment: Alignment.topLeft,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           'Hi, Robin',
//                           style: TextStyle(
//                             fontSize: 20,
//                             color: Color(0xff212121),
//                             fontWeight: FontWeight.w500,
//                             fontFamily: 'Roboto',
//                           ),
//                         ),
//                         SizedBox(height: 4),
//                         Text(
//                           'Let\'s Check Your Activity',
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Color(0xff212121),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 // Image on top right
//                 Align(
//                   alignment: Alignment.topRight,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(5),
//                     child: Image.asset(
//                       'assets/logo61.png',
//                       width: 80,
//                       height: 70,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           // Shipping Address Heading
//           Padding(
//             padding: EdgeInsets.only(top: 10, left: 30),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 'Shipping Address',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontFamily: 'Roboto',
//                   color: Color(0xff212121),
//                 ),
//               ),
//             ),
//           ),

//           // Shipping Address Box
//           Padding(
//             padding: const EdgeInsets.only(left: 30, right: 25, top: 20),
//             child: Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 4,
//                     offset: Offset(2, 4),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           "Pakistan",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           "House no *** Street ***\nArea Lahore, Block XYZ",
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Color(0xff000000),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Text(
//                     "Change",
//                     style: TextStyle(fontSize: 18, color: Colors.black),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           // Payment Methods Heading
//           Padding(
//             padding: EdgeInsets.only(top: 15, left: 35),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 'Payment Methods',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontFamily: 'Roboto',
//                   color: Color(0xff212121),
//                 ),
//               ),
//             ),
//           ),

//           // Blue Container with 4 labeled image boxes
//           Padding(
//             padding: EdgeInsets.only(top: 5),
//             child: Container(
//               height: 110,
//               width: 320,
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 4,
//                     offset: Offset(2, 4),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   buildLabeledImageBox(
//                     'assets/logo44.png',
//                     'Credit/Debit Card',
//                   ),
//                   buildLabeledImageBox('assets/logo46.png', 'PayPal'),
//                   buildLabeledImageBox('assets/logo45.png', 'ApplePay'),
//                   buildLabeledImageBox('assets/logo62.png', 'AddNew'),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 15, left: 35),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: Text(
//                 'Order History',
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontFamily: 'Roboto',
//                   color: Color(0xff212121),
//                 ),
//               ),
//             ),
//           ),
//           Padding(padding: EdgeInsets.only(top: 10),














//   child: Row(
//                   children: [
//                     Container(
//                       height: 180,
//                       width: 160,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         image: const DecorationImage(
//                           image: AssetImage('assets/logo42.png'),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: EdgeInsets.only(left: 15),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Retro Brown man leather bag notebook in bright colorful summer grass.',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontFamily: 'Roboto',
//                                 color: Color(0xff000000),
//                               ),
//                             ),
//                             Text(
//                               '\$ 500',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontFamily: 'Roboto',
//                                 color: Color(0xff2750E1),
//                               ),
//                             ),
//                             Container(
//                               height: 50,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                 color: Color(0xff2750E1),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               child: Center(
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       'Add To Cart',
//                                       style: TextStyle(
//                                         fontSize: 18,
//                                         fontFamily: 'Roboto',
//                                         color: Color(0xffffffff),
//                                       ),
//                                     ),
                                  
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Icon(
//                               Icons.delete,
//                               color: Color(0xff949494),
//                               size: 30,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),


  
//           ),
      
//         ],
//       ),
//     ),
    










          
//         ],
//       ),
//     );
//   }

//   // Small image box with label
//   Widget buildLabeledImageBox(String path, String label) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Container(
//           width: 50,
//           height: 50,
//           decoration: BoxDecoration(
//             color: Color(0xffD9D9D9),
//             borderRadius: BorderRadius.circular(5),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(6.0),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Image.asset(path, fit: BoxFit.contain),
//             ),
//           ),
//         ),
//         const SizedBox(height: 6),
//         Text(
//           label,
//           style: TextStyle(
//             color: Color(0xff575757),
//             fontSize: 12,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Heading
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Roboto',
                    color: Color(0xff212121),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Profile Info Box
            Container(
              height: 100,
              width: 300,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text on the left
                  Expanded(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Hi, Robin',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff212121),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Let\'s Check Your Activity',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff212121),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Image on top right
                  Align(
                    alignment: Alignment.topRight,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/logo61.png',
                        width: 80,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Shipping Address Heading
            Padding(
              padding: EdgeInsets.only(top: 10, left: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Shipping Address',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    color: Color(0xff212121),
                  ),
                ),
              ),
            ),

            // Shipping Address Box
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 25, top: 20),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Pakistan",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "House no *** street ***cewifh\nnoiefreouhf lkewljfoiejf",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Change",
                      style: TextStyle(fontSize: 18, color: Color(0xff2750E1)),
                    ),
                  ],
                ),
              ),
            ),

            // Payment Methods Heading
            Padding(
              padding: EdgeInsets.only(top: 15, left: 35),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Payment Methods',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    color: Color(0xff212121),
                  ),
                ),
              ),
            ),

            // Payment Method Boxes
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                height: 110,
                width: 320,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildLabeledImageBox('assets/logo44.png', 'Credit/Debit'),
                    buildLabeledImageBox('assets/logo46.png', 'PayPal'),
                    buildLabeledImageBox('assets/logo45.png', 'ApplePay'),
                    buildLabeledImageBox('assets/logo62.png', 'AddNew'),
                  ],
                ),
              ),
            ),

            // Order History Heading
            Padding(
              padding: EdgeInsets.only(top: 15, left: 35),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Order History',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    color: Color(0xff212121),
                  ),
                ),
              ),
            ),

            // Order History Row
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/logo42.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Retro Brown man leather bag notebook in bright colorful summer grass.',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            '\$ 500',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              color: Color(0xff2750E1),
                            ),
                          ),
                          
                       
                            Text(
                            'Quantity',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              color: Color(0xff212121),
                            ),
                          ),
                      
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, -10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FaIcon(FontAwesomeIcons.home,color: Color(0xff2750E1),),
                  SizedBox(width: 8),
                  FaIcon(FontAwesomeIcons.cartShopping,color: Color(0xff2750E1)),
                  SizedBox(width: 8),
                  FaIcon(FontAwesomeIcons.bell,color: Color(0xff2750E1)),
                   SizedBox(width: 8),
                  FaIcon(FontAwesomeIcons.home,color: Color(0xff2750E1)),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Labeled small image box
  Widget buildLabeledImageBox(String path, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xffD9D9D9),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(path, fit: BoxFit.contain),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(
            color: Color(0xff575757),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
