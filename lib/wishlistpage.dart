import 'dart:math';

import 'package:appfusion/product_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Wishlistpage extends StatelessWidget {
  const Wishlistpage({super.key});

  @override
  Widget build(BuildContext context) {
    String time = DateFormat('h:mm').format(DateTime.now());
    double topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductDetailPage(),
                    ),
                  );
                },
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Bar
              Stack(
                children: [
                  Container(
                    height: topPadding + 100,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xff2750E1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: topPadding,
                    left: 16,
                    child: Row(
                      children: [
                        Text(
                          time,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 16,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8),
                        const FaIcon(
                          FontAwesomeIcons.whatsapp,
                          size: 16,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: topPadding,
                    right: 16,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.signal_cellular_alt,
                          size: 18,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.signal_cellular_alt,
                          size: 18,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '41%',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Icon(Icons.battery_full, size: 18, color: Colors.white),
                      ],
                    ),
                  ),
                  Positioned(
                    top: topPadding + 40,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: const Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Text(
                          "My Cart",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/vector.png',
                                height: 24,
                                width: 24,
                              ),
                              const SizedBox(width: 8),
                              Image.asset(
                                'assets/logo8.png',
                                height: 24,
                                width: 24,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
        
              // Wishlist Item
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                       child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductDetailPage(),
                      ),
                    );
                  },
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
                              Text(
                                '\$ 500',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto',
                                  color: Color(0xff2750E1),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xff2750E1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Add To Cart',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      FaIcon(
                                        FontAwesomeIcons.cartShopping,
                                        color: Color(0xffffffff),
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.delete,
                                color: Color(0xff949494),
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Divider(thickness: 2, indent: sqrt1_2, endIndent: 2),
              ),
        
              Padding(
                padding: EdgeInsets.only(top: 0, left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Same Like This',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 30,
                      color: Color(0xff212121),
                    ),
                  ),
                ),
              ),
        
              // Same Like This Section
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // First Box
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 165,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/logo53.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Text(
                          'Retro brown man \nleather bag and n..',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff212121),
                          ),
                        ),
        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount: 75%',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0Xff747474),
                              ),
                            ),
        
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Price',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: Color(0Xff2750E1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '.',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff2750E1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\$500',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0Xff5427E1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
        
                    // Second Box
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 165,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/logo54.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Text(
                          'Retro brown man \nleather bag and n..',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff212121),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount: 75%',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0Xff747474),
                              ),
                            ),
        
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Price',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: Color(0Xff2750E1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '.',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff2750E1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\$500',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0Xff5427E1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/logo55.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
        
                    Container(
                      height: 150,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/logo56.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 16, left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FaIcon(FontAwesomeIcons.home,color: Color(0xff2750E1),),
                    FaIcon(FontAwesomeIcons.cartShopping,color: Color(0xff2750E1),),
                    FaIcon(FontAwesomeIcons.bell,color:Color(0xff2750E1)),
                    FaIcon(FontAwesomeIcons.eye,color: Color(0xff2750E1)),
                    
            
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // First RichText: Price $500
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          color: Color(0xff2750E1),
                        ),
                        children: [
                          TextSpan(text: 'Price.'),
                          TextSpan(
                            text: '\$500',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff2750E1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Second RichText: Price $500
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          color: Color(0xff2750E1),
                        ),
                        children: [
                          TextSpan(text: 'Price.'),
                          TextSpan(
                            text: '\$500',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff2750E1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
        
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // First Box
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 165,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/logo38.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Text(
                          'Retro brown man \nleather bag and n..',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff212121),
                          ),
                        ),
        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount: 75%',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0Xff747474),
                              ),
                            ),
        
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Price',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: Color(0Xff2750E1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '.',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff2750E1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\$500',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0Xff5427E1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
        
                    // Second Box
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 165,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/logo57.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Text(
                          'Retro brown man \nleather bag and n..',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff212121),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount: 75%',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0Xff747474),
                              ),
                            ),
        
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Price',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: Color(0Xff2750E1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '.',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff2750E1),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\$500',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0Xff5427E1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
