import 'dart:math';

import 'package:appfusion/verify_email_page.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Logo at the top center
          Positioned(
            top: 0,
            left: MediaQuery.of(context).size.width / 2 - 125,
            child: Image.asset('assets/logo3.png', height: 250, width: 250),
          ),

          // Form fields and Sign Up button
          Positioned(
            top: 230,
            left: 20,
            right: 20,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Phone Or email',
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
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                SizedBox(
                  width:
                      double.infinity, // Make button as wide as TextFormField
                  child: ElevatedButton(
                    onPressed: () {
                      
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => VerifyEmailPage(),
                        ),
                      );
                        
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff2750E1),
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ), // match TextFormField radius
                      ),
                    ),
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff000000)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/logo6.png'),
                      height: 35,
                      width: 35,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'continue with google',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                     height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xff000000)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/apple.png'),
                      height: 35,
                      width: 35,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'continue with google',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                   RichText(
                  text: TextSpan(
                    text: 'I dont have an account?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold, letterSpacing: sqrt1_2
                    ),
                     
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(fontSize: 16, color: Colors.blue,),
                      ),
                    ],
                  ),
                ),

                

                // Sign Up button
              ],
            ),
          ),
        ],
      ),
    );
  }
}
