import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 30),

          Text(
            "Favourites",
            style: TextStyle(
              fontFamily: "Girloy",
              fontSize: 18,

              fontWeight: FontWeight.w800,
              color: Color(0xFF181725),
            ),
          ),

          SizedBox(height: 30),
          Divider(),

          buildContainer(path: "assets/images/sprite.png", text: "Sprite Can"),
          buildContainer(path: "assets/images/coke.png", text: "Diet Coke"),
          buildContainer(path: "assets/images/pepsi.png", text: "Apple Juice"),
          buildContainer(path: "assets/images/cola.png", text: "Coca Coal Can"),
          buildContainer(path: "assets/images/pepsi.png", text: "Pepsi Can"),

          SizedBox(height: 15),
          Container(
            height: 67,
            width: 364,
            padding: EdgeInsets.only(left: 25),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF53B175),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Center(
                child: Text(
                  "Add All To Cart",
                  style: TextStyle(
                    color: Color(0xFFFCFCFC),
                    fontSize: 18,
                    fontFamily: "Gilroy",
                    fontWeight: FontWeight.w500, // Reduced to fit comfortably
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer({
    required String path,
    required String text,
    double width = 30,
    double height = 55,
  }) {
    return Container(
      width: double.infinity,
      height: 120,
      // padding: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          SizedBox(height: 10),

          Row(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 6),
              Image.asset("$path", width: width, height: height),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontFamily: "Girloy",
                      fontSize: 16,

                      fontWeight: FontWeight.w600,
                      color: Color(0xFF181725),
                    ),
                  ),
                  Text(
                    "325ml, Price",
                    style: TextStyle(
                      fontFamily: "Girloy-Medium",
                      fontSize: 14,

                      fontWeight: FontWeight.w500,
                      color: Color(0xFF7C7C7C),
                    ),
                  ),
                ],
              ),

              Spacer(),
              Text(
                "\$1.50",
                style: TextStyle(
                  fontFamily: "Girloy",
                  fontSize: 16,

                  fontWeight: FontWeight.w600,
                  color: Color(0xFF181725),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          SizedBox(height: 13),
          Divider(),
        ],
      ),
    );
  }
}
