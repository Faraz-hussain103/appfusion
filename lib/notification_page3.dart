import 'package:appfusion/home_page3.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationPage3 extends StatelessWidget {
  const NotificationPage3({super.key});

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
            MaterialPageRoute(builder: (context) => HomePage3()),
          );
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Section
              Padding(
                padding: EdgeInsets.only(top: topPadding, left: 16, right: 16),
                child: Column(
                  children: [
                    // Top Row: Time and Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              time,
                              style: const TextStyle(
                                color: Color(0xff7A7A7A),
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const FaIcon(
                              FontAwesomeIcons.facebook,
                              size: 16,
                              color: Color(0xff7A7A7A),
                            ),
                            const SizedBox(width: 8),
                            const FaIcon(
                              FontAwesomeIcons.whatsapp,
                              size: 16,
                              color:Color(0xff7A7A7A),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.signal_cellular_alt,
                              size: 18,
                              color: Color(0xff7A7A7A),
                            ),
                            Icon(
                              Icons.signal_cellular_alt,
                              size: 18,
                              color: Color(0xff7A7A7A)
                            ),
                            SizedBox(width: 8),
                            Text(
                              '41%',
                              style: TextStyle(fontSize: 18, color: Color(0xff7A7A7A),),
                            ),
                            Icon(
                              Icons.battery_full,
                              size: 18,
                              color: Color(0xff7A7A7A)
                            ),
                          ],
                        ),
                      ],
                    ),
        
                    const SizedBox(height: 10),
        
                    // Title
                    const Text(
                      "Notifications",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
        
                    const SizedBox(height: 10),
        
                    // Row of Icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            iconCircle(FontAwesomeIcons.clipboardList),
                            const SizedBox(height: 6),
                            const Text(
                              'Orders',
                              style: TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            iconCircle(FontAwesomeIcons.percent),
                            const SizedBox(height: 6),
                            const Text(
                              'Offers',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                color: Color(0xff2750E1),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            iconCircle(FontAwesomeIcons.bullhorn),
                            const SizedBox(height: 6),
                            const Text(
                              'Promos',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                color: Color(0xff2750E1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
        
                    const SizedBox(height: 20),
        
                    // List of Cards
                    Column(
                      children: List.generate(4, (index) {
                        return Card(
                          color: const Color(
                            0xffD9D9D9,
                          ), // your own background color
                          elevation: 3,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                // Left Text Column
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "20 % OFF",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff212121),
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Week Deals",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          color: Color(0XFF212121),
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Get a new car only valid This week",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          color: Color(0xff212121),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
        
                                // Right Image
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/logo60.png',
                                    width: 150,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                    Transform.translate(
                      offset: Offset(0, -10),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FaIcon(FontAwesomeIcons.home, size: 28, color: Colors.blue),
                            FaIcon(FontAwesomeIcons.search, size: 28, color: Colors.blue),
                            FaIcon(FontAwesomeIcons.heart, size: 28, color: Colors.blue),
                            FaIcon(FontAwesomeIcons.user, size: 28, color: Colors.blue),
        
                          ],
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
    );
  }

  // Icon Circle Widget
  static Widget iconCircle(IconData iconData) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(child: FaIcon(iconData, color: Colors.white, size: 30)),
    );
  }
}



