import 'package:appfusion/wishlistpage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartPage2 extends StatelessWidget {
  const CartPage2({super.key});

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

            // Credit/Debit Card Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xfff0f0f0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/logo44.png', // This is the asset added inside the container
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'Credit/Debit Card',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/logo43.png', // Optional trailing image
                    height: 24,
                    width: 24,
                    color: Color(0xff2750E1),
                  ),
                ],
              ),
            ),

            // Other Payment Methods
            Column(
              children: [
                _buildPaymentRowWithoutImage('PayPal', 'assets/logo46.png'),
                _buildPaymentRowWithoutImage('Apple Pay', 'assets/logo45.png'),
                _buildPaymentRowWithoutImage('Other Payment Methods','assets/logo62.png'),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 25, right: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter Card Name',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    color: Color(0xff747474),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 20, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Name on Card',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      color: Color(0xff747474),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff747474)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff000000)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 25, right: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Shipping Address',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    color: Color(0xff212121),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            // Shipping Address Box
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 0),
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
                      style: TextStyle(fontSize: 20, color: Color(0xff2750E1)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 27, right: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Roboto',
                        color: Color(0xff212121),
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      '\$600',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Roboto',
                        color: Color(0xff212121),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: SizedBox(
                height: 50,
                width: 325,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Wishlistpage()),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff2750E1), // Button color
                    padding: EdgeInsets.symmetric(horizontal: 28, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: Text(
                    'Proceed To Checkout',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffffffff),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
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

  Widget _buildPaymentRowWithoutImage(String label, String iconPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 60,
            decoration: BoxDecoration(
              color: const Color(0xfff0f0f0),
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Image.asset(
              iconPath,
              height: 33,
              width: 33,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
