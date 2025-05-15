import 'package:flutter/material.dart';
import 'package:online_groceries_market/screens/number_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/log_in.jpg", width: 411, height: 356),
          Container(
            padding: EdgeInsets.only(left: 25),
            width: 253,
            height: 63,
            child: Text(
              "Get your groceries\nwith nectar",
              style: TextStyle(
                fontFamily: "Gilroy",
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Color(0xFF030303),
              ),
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Numberscreen()),
              );
            },
            child: Container(
              padding: EdgeInsets.only(left: 25),
              height: 40,
              width: 364,
              child: Row(
                spacing: 10,
                children: [
                  Image.asset(
                    "assets/images/Bangladesh_flag.png",
                    height: 23,
                    width: 33,
                  ),
                  Text(
                    "+880",
                    style: TextStyle(
                      fontFamily: "Gilroy - Medium, ",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Colors.black.withOpacity(0.5), // 0.5 = 50% opacity
              thickness: 0,
            ),
          ),
          Center(
            child: Text(
              "Or connect with social media",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 30, 0, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF5383EC),
            ),
            width: 342.7,
            height: 67,
            padding: EdgeInsets.only(left: 25),
            child: Row(
              spacing: 35,
              children: [
                Image.asset("assets/images/google.png", height: 40, width: 40),
                Text(
                  "Continue with Google",
                  style: TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFCFCFC),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(25, 15, 0, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF4A66AC),
            ),
            width: 342.7,
            height: 67,
            padding: EdgeInsets.only(left: 25),
            child: Row(
              spacing: 35,
              children: [
                Image.asset(
                  "assets/images/facebook.png",
                  height: 40,
                  width: 40,
                ),
                Text(
                  "Continue with Facebook",
                  style: TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFCFCFC),
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
