


import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:appfusion/notification_page2.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    String time = DateFormat('h:mm').format(DateTime.now());
    String currentDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
    double topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Notificationpage2()),
          );
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Bar Section
              Padding(
                padding: EdgeInsets.only(top: topPadding, left: 16, right: 16),
                child: Column(
                  children: [
                    // Time and icons row
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
                              color: Color(0xff7A7A7A),
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
                              color: Color(0xff7A7A7A),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '41%',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff7A7A7A),
                              ),
                            ),
                            Icon(
                              Icons.battery_full,
                              size: 18,
                              color: Color(0xff7A7A7A),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Notifications",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff212121),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Row of 3 icons with labels (no gesture here)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            iconCircle(FontAwesomeIcons.clipboardList),
                            const SizedBox(height: 6),
                            const Text(
                              'Orders',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
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
                  ],
                ),
              ),

              // Notification List Section
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    ...List.generate(
                      6,
                      (index) => buildNotificationCard(currentDate),
                    ),
                    const SizedBox(height: 10),

                    // Row of 4 icons (no gesture wrapping each)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              FaIcon(FontAwesomeIcons.home,color: Color(0xff2750E1),),
                              
                            ],
                          ),
                          Column(
                            children: const [
                              FaIcon(FontAwesomeIcons.cartShopping,color: Color(0xff2750E1),),
                              SizedBox(height: 4),
                          
                            ],
                          ),
                          Column(
                            children: const [
                              FaIcon(FontAwesomeIcons.bell,color: Color(0xff2750E1),),
                              SizedBox(height: 4),
                      
                            ],
                          ),
                          Column(
                            children: const [
                              FaIcon(FontAwesomeIcons.user,color: Color(0xff2750E1),),
                              SizedBox(height: 4),
                      
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Circle icon container
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

  // Single Notification Card Widget
  Widget buildNotificationCard(String currentDate) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 100,
        width: 320,
        decoration: BoxDecoration(
          color: const Color(0xffF4F4F4),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Image.asset('assets/logo58.png'),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      'Classic luxury Watch is available\nnow',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 8,
              right: 12,
              child: Text(
                currentDate,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
