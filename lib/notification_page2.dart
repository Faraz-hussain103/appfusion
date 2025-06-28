import 'package:appfusion/notification_page3.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Notificationpage2 extends StatelessWidget {
  const Notificationpage2({super.key});

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
            MaterialPageRoute(builder: (context) => NotificationPage3()),
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
                              color: Color(0XFF7A7A7A),
                            ),
                            const SizedBox(width: 8),
                            const FaIcon(
                              FontAwesomeIcons.whatsapp,
                              size: 16,
                              color: Color(0XFF7A7A7A),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.signal_cellular_alt,
                              size: 18,
                              color: Color(0XFF7A7A7A),
                            ),
                            Icon(
                              Icons.signal_cellular_alt,
                              size: 18,
                              color: Color(0XFF7A7A7A),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '41%',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0XFF7A7A7A),
                              ),
                            ),
                            Icon(
                              Icons.battery_full,
                              size: 18,
                              color: Color(0XFF7A7A7A),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    const Text(
                      "Notification ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Icon Row
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

                    const SizedBox(height: 30),

                    // Repeated Notification Cards
                    Column(
                      children: [
                        ...List.generate(4, (index) {
                          return Card(
                            color: Color(0xffD9D9D9),
                            elevation: 3,
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "6.6 Sale Fashion Ka jashan",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: Text(
                                    "4/6/2024",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 0),
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                    bottom: Radius.circular(0),
                                  ),
                                  child: Image.asset(
                                    'assets/logo59.png',
                                    fit: BoxFit.cover,
                                    width: 330,
                                    height: 80,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),

                        Transform.translate(
                          offset: const Offset(0, -10),
                          child: Container(
                            height: 70,
                            width: 340,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 6,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                FaIcon(
                                  FontAwesomeIcons.home,
                                  size: 28,
                                  color: Colors.blue,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.search,
                                  size: 28,
                                  color: Colors.blue,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.heart,
                                  size: 28,
                                  color: Colors.blue,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.user,
                                  size: 28,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Bottom Row of 4 FontAwesome Icons
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Circular icon widget
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
