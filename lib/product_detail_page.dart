import 'dart:math';

import 'package:appfusion/notificationpage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    String time = DateFormat('h:mm').format(DateTime.now());
    double topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

      
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
                      bottomRight: Radius.circular(80),
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
                        padding: const EdgeInsets.only(left: 10),
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Search for products',
                                prefixIcon: Icon(Icons.search),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 10,
                                ),
                                border: InputBorder.none,
                                hintStyle: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: const [
                            FaIcon(
                              FontAwesomeIcons.shareNodes,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(width: 12),
                            FaIcon(
                              FontAwesomeIcons.cartShopping,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                
            // Product Image
            Stack(
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo48.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 30,
                  left: 10,
                  right: 0,
                  child: Center(
                    child: Text(
                      '.......',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
                
            // Product Details
            Transform.translate(
              offset: const Offset(0, -35),
              child: Center(
                child: Container(
                  height: 370, // increased height
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Wireless earbuds with meon cyberpunk\n style lighting',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: Color(0xff000000),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'This dish originates from the Balochistan province in Pakistan and consists of marinated, skewered, r..',
                          style: TextStyle(fontSize: 13),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: const [
                            Text(
                              '\$ 500',
                              style: TextStyle(
                                color: Color(0xff2750E1),
                                fontFamily: 'Roboto',
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Rs.700',
                              style: TextStyle(
                                color: Color(0xff878787),
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            SizedBox(width: 3),
                            Text(
                              '-73%',
                              style: TextStyle(
                                color: Color(0xff878787),
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              '2k sold',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                color: Color(0xff212121),
                              ),
                            ),
                            SizedBox(width: 5),
                            FaIcon(
                              FontAwesomeIcons.heart,
                              color: Color(0xff212121),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '1K',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                color: Color(0xff212121),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: TextFormField(
                            readOnly: true,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '4.25 >',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              hintText: '200 Question and Answers',
                              hintStyle: const TextStyle(
                                fontSize: 14,
                                color: Color(0xff000000),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 16,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xff5E5E5E),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xff2750E1),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15, top: 10),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => NotificationPage()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff2750E1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'Add to question',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 15),
                          child: Divider(
                            thickness: 2,
                            indent: 1,
                            endIndent: sqrt1_2,
                            color: const Color(0xffE0E0E0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, right: 15),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xff2750E1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Buy Now',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xffff5C00),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Buy Now',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(right: 150, top: 0),
                child: Text(
                  'Rating & Reviews',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                  ),
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(left: 40, top: 10),
                child: Row(
                  children: [
                    Text(
                      '4.25',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 1),
                    Icon(Icons.star, color: Color(0xffffE600), size: 30),
                    SizedBox(width: 1),
                    Icon(Icons.star, color: Color(0xffffE600), size: 30),
                    SizedBox(width: 1),
                    Icon(Icons.star, color: Color(0xffffE600), size: 30),
                    SizedBox(width: 1),
                    Icon(Icons.star, color: Color(0xffffE600), size: 30),
                    SizedBox(width: 1),
                    FaIcon(
                      FontAwesomeIcons.starHalfAlt,
                      color: Color(0xffFFE600),
                      size: 24,
                    ),
                    FaIcon(FontAwesomeIcons.star, color: Color(0xffFFE600)),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 20, top: 10),
                child: Column(
                  children: [
                    Divider(
                      thickness: 2,
                      indent: 1,
                      endIndent: sqrt1_2,
                      color: Color(0xffE0E0E0),
                    ),
                  ],
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Color(0xffffE600), size: 25),
                    Icon(Icons.star, color: Color(0xffffE600), size: 25),
                    Icon(Icons.star, color: Color(0xffffE600), size: 25),
                    Icon(Icons.star, color: Color(0xffffE600), size: 25),
                    SizedBox(width: 10),
                    Text(
                      'Anonymus Abd',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Color(0xffB5B5B5),
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      '3 days ago',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Color(0xffB5B5B5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(left: 45, right: 30, top: 10),
                child: Column(
                  children: [
                    Text(
                      'This dish originates from the Balochistan prov in pakistan and consists of marinated\nand roasted or whole lamb or chicken',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(right: 220, left: 35, top: 10),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color(0xffB5B5B5),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/logo49.png'),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 20, top: 10),
                child: Column(
                  children: [
                    Divider(
                      thickness: 2,
                      indent: 1,
                      endIndent: sqrt1_2,
                      color: Color(0xffE0E0E0),
                    ),
                  ],
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Color(0xffffE600), size: 25),
                    Icon(Icons.star, color: Color(0xffffE600), size: 25),
                    Icon(Icons.star, color: Color(0xffffE600), size: 25),
                    Icon(Icons.star, color: Color(0xffffE600), size: 25),
                    SizedBox(width: 10),
                    Text(
                      'Anonymus Abd',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Color(0xffB5B5B5),
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      '3 days ago',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Color(0xffB5B5B5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(left: 45, right: 30, top: 10),
                child: Column(
                  children: [
                    Text(
                      'This dish originates from the Balochistan prov in pakistan and consists of marinated\nand roasted or whole lamb or chicken',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(right: 220, left: 35, top: 10),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color(0xffB5B5B5),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/logo49.png'),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 20, top: 10),
                child: Column(
                  children: [
                    Divider(
                      thickness: 2,
                      indent: 1,
                      endIndent: sqrt1_2,
                      color: Color(0xffE0E0E0),
                    ),
                  ],
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Color(0xffffE600), size: 25),
                    Icon(Icons.star, color: Color(0xffffE600), size: 25),
                    Icon(Icons.star, color: Color(0xffffE600), size: 25),
                    Icon(Icons.star, color: Color(0xffffE600), size: 25),
                    SizedBox(width: 10),
                    Text(
                      'Anonymus Abd',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Color(0xffB5B5B5),
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      '3 days ago',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Color(0xffB5B5B5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(left: 45, right: 30, top: 10),
                child: Column(
                  children: [
                    Text(
                      'This dish originates from the Balochistan prov in pakistan and consists of marinated\nand roasted or whole lamb or chicken',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(right: 220, left: 35, top: 10),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Color(0xffB5B5B5),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/logo49.png'),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 20, top: 10),
                child: Column(
                  children: [
                    Divider(
                      thickness: 2,
                      indent: 1,
                      endIndent: sqrt1_2,
                      color: Color(0xffE0E0E0),
                    ),
                  ],
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50),
                
              child: Center(
                child: Text(
                  'View all>',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Color(0xff2750E1),
                  ),
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 15 pixels
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 20, top: 10),
                child: Column(
                  children: [
                    Divider(
                      thickness: 2,
                      indent: 1,
                      endIndent: sqrt1_2,
                      color: Color(0xffE0E0E0),
                    ),
                  ],
                ),
              ),
            ),
                
            Transform.translate(
              offset: Offset(0, -50), // moves it up by 50 pixels
              child: Padding(
                padding: EdgeInsets.only(left: 5, right: 5, top: 10),
                child: Stack(
                  children: [
                    Container(
                      height: 400,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/logo51.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 20,
                      left: 10,
                      child: Text(
                        'These erburds offers imbepeccable sound quality,\ndelivering a truly immersive audio experience.Therir\nsleek design and confortable fit make them a must-\nhave for any music lover on the ego.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                
            Transform.translate(
              offset: const Offset(0, -50),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 0),
                child: Stack(
                  children: [
                    Container(
                      height: 270,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(0),
                        image: const DecorationImage(
                          image: AssetImage('assets/logo50.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        '"Immerse Yourself: Unveiling the Ultimate Earbud\nExperience"',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
                
            Transform.translate(
              offset: const Offset(0, -50),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 0),
                child: Container(
                  height: 320,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(0),
                    image: const DecorationImage(
                      image: AssetImage('assets/logo52.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -40),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 0),
                child: Text(
                  '"Step into a world of sonic sophistication with our state-of-the-art earbuds. Crafted with precision engineering and advanced technology.',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff212121),
                  ),
                ),
              ),
            ),
                
            Transform.translate(
              offset: const Offset(0, -40),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
                child: Text(
                  '"these sleek companions redefine audio immersion. Feel the pulse of every note, the clarity of every lyric, and the depth of every beat as you indulge in a truly immersive listening experience.',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff212121),
                  ),
                ),
              ),
            ),
                
            Transform.translate(
              offset: const Offset(0, -40),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
                child: Text(
                  '" With ergonomic design and seamless connectivity, they seamlessly integrate into your lifestyle, ',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff212121),
                  ),
                ),
              ),
            ),
                
            Transform.translate(
              offset: const Offset(0, -40),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
                child: Text(
                  'whether youre on-the-go or unwinding at home. Elevate your audio journey with these earbuds – where innovation meets unparalleled sound',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xff212121),
                  ),
                ),
              ),
            ),
                
            Transform.translate(
              offset: const Offset(0, -40),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 150, top: 15),
                child: Text(
                  'People Also View',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Color(0xff212121),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -40),
              child: Padding(
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
            ),
                
            Transform.translate(
              offset: const Offset(0, -40),
              child: Padding(
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
                              image: AssetImage('assets/logo55.png'),
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
                              image: AssetImage('assets/logo56.png'),
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
            ),
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            Transform.translate(
              offset: const Offset(0, -40),
              child: Padding(
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
            ),
                
                
                
                
                
                
                
                
                
                
                
          ],
        ),
      ),
    );
  }
}




