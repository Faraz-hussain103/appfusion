import 'package:appfusion/home_page2.dart';
import 'package:flutter/material.dart';

Widget buildAvatarWithLabel(String imagePath, String label) {
  return Column(
    children: [
      CircleAvatar(radius: 42, backgroundImage: AssetImage(imagePath)),
      SizedBox(height: 6),
      Text(label, style: TextStyle(fontSize: 14, color: Color(0xff212121))),
    ],
  );
}
  Widget buildImageContainer(BuildContext context, String imagePath) {
  double containerSize = MediaQuery.of(context).size.width * 0.45; // around 22% of screen width

  return Container(
    height: containerSize,
    width: containerSize,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    ),
  );
  
  }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Stack layout
              Stack(
                children: [
                  // Background image
                  Image.asset('assets/logo7.png'),

                  // Search bar
                  Positioned(
                    top: 30,
                    left: 20,
                    right: 90,
                    child: Container(
                      height: 45,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search for products',
                          border: InputBorder.none,
                          icon: Icon(Icons.search, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),

                  // Row with vector and logo8
                  Positioned(
                    top: 30,
                    right: 5,
                    child: Row(
                      children: [
                        Image.asset('assets/vector.png', height: 40, width: 40),
                        SizedBox(width: 0),
                        Image.asset('assets/logo8.png', height: 40, width: 40),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              // Container with logo10
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/logo10.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),

              // Categories text + View All in same Row
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Roboto',
                        color: Color(0xff212121),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage2()),
                        );
                      },

                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xff2750E1)),
                        ),
                        child: Center(
                          child: Text(
                            'View All',
                            style: TextStyle(color: Color(0xff2750E1)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Based on your Interests',
                    style: TextStyle(color: Color(0xff747474)),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 16, top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildAvatarWithLabel('assets/logo11.png', 'Electronics'),
                      buildAvatarWithLabel('assets/logo12.png', 'Grocery'),
                      buildAvatarWithLabel('assets/logo13.png', 'Cloths'),
                      buildAvatarWithLabel('assets/logo14.png', 'Perfume'),
                  
                      CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/logo11.png'),
                      ),
                  
                      CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/logo12.png'),
                      ),
                  
                      CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/logo13.png'),
                      ),
                      CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/logo14.png'),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buildAvatarWithLabel('assets/logo15.png', 'Shoes'),
                      buildAvatarWithLabel('assets/logo17.png', 'Watches'),
                      buildAvatarWithLabel('assets/logo18.png', 'Medicine'),
                      buildAvatarWithLabel('assets/logo19.png', 'Bags'),
                      CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/logo15.png'),
                      ),
                  
                      CircleAvatar(
                        radius: 42,
                  
                        backgroundImage: AssetImage('assets/logo15.png'),
                      ),
                  
                      CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/logo17.png'),
                      ),
                      CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/logo18.png'),
                      ),
                      CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/logo19.png'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),

              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Container(
                  height: 150,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xff2750E1)),
                    image: DecorationImage(
                      image: AssetImage('assets/logo39.png'),
                    ),
                  ),
                ),
              ),
                Padding(padding: EdgeInsets.only(top: 16,left: 10),

                   child: Stack(
                    children: [
                      Image.asset('assets/logo32.png',
                      fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 305,
                        left: 5,
                        child: Row(
                          children: [
                             buildImageContainer(context, 'assets/logo30.png'),
                            SizedBox(width: 10),
                             buildImageContainer(context, 'assets/logo31.png'),
                          ],
                        ),
                        ),
                    
                            Positioned(
                      top: 305 + 233,
                      left: 5,
                      child: Row(
                        children: [
                          buildImageContainer(context, 'assets/logo33.png'),
                          SizedBox(width: 10),
                          buildImageContainer(context, 'assets/logo34.png'),
                        ],
                      ),
                    ),
                      Positioned(
                        top: 305+233+233,
                        child: Row(
                        children: [
                          buildImageContainer(context, 'assets/logo38.png'),
                           SizedBox(width: 10),
                          buildImageContainer(context, 'assets/logo36.png'),
                        ],
                      )
                      ),
                      Positioned(
                        top: 305+233+233+233,
                        child: Row(
                          children: [
                            buildImageContainer(context, 'assets/logo35.png'),
                           SizedBox(width: 10),
                          buildImageContainer(context, 'assets/logo37.png'),
                                ],
                        )
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

