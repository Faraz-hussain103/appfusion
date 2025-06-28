import 'package:appfusion/cart_page2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    String time = DateFormat('h:mm').format(DateTime.now());
    double topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                        padding: EdgeInsets.only(left: 16),
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),

                          child: Icon(
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

            // Shipping Address Title
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Shipping Address",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            // Shipping Address Box
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
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
                            "House no *** street ***cewifh oiefreouhf lkewljfoiejf",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "change",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Product Container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    // Image
                    Container(
                      margin: EdgeInsets.all(12),
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage('assets/logo42.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Product Text
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Retro Brown man leather bag notebook in bright colorful summer grass.",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "\$500\nQuantity: 1",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                              ),
                            ),
                            SizedBox(height: 6),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Icons.delete,
                                color: Color(0xff949494),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Checkout Summary Box
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                right: 16,
                left: 16,
                bottom: 30,
              ),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'CheckOut summary',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    BulletText(label: 'Items total', amount: '\$500'),
                    BulletText(label: 'Shipping Fee', amount: '\$50'),
                    BulletText(label: 'Delivery Discount', amount: '\$20'),
                    BulletText(label: 'Total payment', amount: '\$600'),
                  ],
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 55,
                width: 325,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartPage2()),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff2750E1), // Button color
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: Text(
                    'Proceed To Checkout',
                    style: TextStyle(fontSize: 18, color: Color(0xffffffff)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FaIcon(FontAwesomeIcons.home, color: Color(0xff2750E1)),
                  FaIcon(
                    FontAwesomeIcons.cartShopping,
                    color: Color(0xff2750E1),
                  ),
                  FaIcon(FontAwesomeIcons.bell,color: Color(0xff2750E1),),
                 FaIcon(FontAwesomeIcons.user,color: Color(0xff2750E1),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ✅ BulletText widget (aligned text and price)
class BulletText extends StatelessWidget {
  final String label;
  final String amount;

  const BulletText({super.key, required this.label, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          const Text('• ', style: TextStyle(fontSize: 16)),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label, style: const TextStyle(fontSize: 16)),
                Text(
                  amount,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
