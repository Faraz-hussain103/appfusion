

// import 'package:flutter/material.dart';
// import 'package:appfusion/log_in_page.dart';

// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           Positioned(
//             top: 0,
//             left: MediaQuery.of(context).size.width / 2 - 125,
//             child: Image.asset('assets/logo3.png', height: 250, width: 250),
//           ),
//           Positioned(
//             top: 150,
//             left: 30,
//             right: 30,
//             child: Column(
//               children: [
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: 'Enter Your Phone Or Email',
//                     prefixIcon: Icon(Icons.email_outlined),
//                     prefixIconColor: Color(0xff747474),
//                     hintStyle: TextStyle(
//                       color: Colors.blueGrey,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     hintText: 'Password',
//                     prefixIcon: Icon(Icons.lock),
//                     prefixIconColor: Color(0xff747474),
//                     hintStyle: TextStyle(
//                       color: Colors.blueGrey,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     hintText: 'Confirm Password',
//                     prefixIcon: Icon(Icons.lock),
//                     prefixIconColor: Color(0xff747474),
//                     hintStyle: TextStyle(
//                       color: Colors.blueGrey,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => LogInPage()),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xff2750E1),
//                     padding: EdgeInsets.symmetric(horizontal: 120, vertical: 18),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Text(
//                     'Sign Up',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontFamily: 'Roboto',
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 60),
//                 Container(
//                   height: 60,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(color: Colors.black),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [Image.asset('assets/logo4.png')],
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   height: 60,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(color: Colors.black),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [Image.asset('assets/logo5.png')],
//                   ),
//                 ),
//                 SizedBox(height: 15),
//                 RichText(
//                   text: TextSpan(
//                     text: 'Already have an account? ',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: 'Login',
//                         style: TextStyle(fontSize: 16, color: Colors.blue),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




















import 'package:flutter/material.dart';
import 'package:appfusion/log_in_page.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: MediaQuery.of(context).size.width / 2 - 125,
            child: Image.asset(
              'assets/logo3.png', // optimized image
              height: 250,
              width: 250,
            ),
          ),
          Positioned(
            top: 150,
            left: 30,
            right: 30,
            child: Column(
              children: [
                // Email / Phone
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Phone Or Email',
                    prefixIcon: const Icon(Icons.email_outlined),
                    prefixIconColor: const Color(0xff747474),
                    hintStyle: const TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Password
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    prefixIconColor: const Color(0xff747474),
                    hintStyle: const TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Confirm Password
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    prefixIcon: const Icon(Icons.lock),
                    prefixIconColor: const Color(0xff747474),
                    hintStyle: const TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Sign Up Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogInPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2750E1),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 120,
                      vertical: 18,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),

                const SizedBox(height: 60),

                // Social Buttons
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo4.png'), // optimized image
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo5.png'), // optimized image
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                // Already have an account?
                RichText(
                  text: const TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ],
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
