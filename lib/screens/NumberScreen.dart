import 'package:flutter/material.dart';

class Numberscreen extends StatelessWidget {
  const Numberscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 25,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 80),
            child: Text(
              "Enter your mobile number",
              style: TextStyle(
                fontFamily: "Gilroy",
                fontSize: 26,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
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
        ],
      ),
    );
  }
}
