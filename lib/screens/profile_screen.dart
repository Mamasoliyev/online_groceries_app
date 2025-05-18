import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Row(
              children: [
                SizedBox(width: 25),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/person.png"),
                ),

                SizedBox(width: 20),

                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Afsar Hossen",
                          style: TextStyle(
                            fontFamily: "Girloy-Bold",
                            fontSize: 20,

                            fontWeight: FontWeight.bold,
                            color: Color(0xFF181725),
                          ),
                        ),
                        SizedBox(width: 10),

                        SvgPicture.asset("assets/svgs/qalam.svg"),
                      ],
                    ),
                    Text(
                      "Imshuvo97@gmail.com",
                      style: TextStyle(
                        fontFamily: "Girloy-Regular",
                        fontSize: 16,

                        fontWeight: FontWeight.w400,
                        color: Color(0xFF7C7C7C),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Divider(),

            buildContainer(path: "assets/svgs/orders.svg", text: "Orders"),
            buildContainer(path: "assets/svgs/details.svg", text: "My Details"),
            buildContainer(
              path: "assets/svgs/address.svg",
              text: "Delivery Address",
            ),
            buildContainer(
              path: "assets/svgs/payment.svg",
              text: "Payment Methods",
            ),
            buildContainer(path: "assets/svgs/promo.svg", text: "Promo Cord"),
            buildContainer(path: "assets/svgs/bell.svg", text: "Notifecations"),
            buildContainer(path: "assets/svgs/help.svg", text: "Help"),
            buildContainer(path: "assets/svgs/about.svg", text: "About"),

            SizedBox(height: 15),
            Container(
              height: 67,
              width: 364,
              padding: EdgeInsets.only(left: 25),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color(0xFFF2F3F2),
              ),
              child: Row(
                spacing: 100,
                children: [
                  SvgPicture.asset(
                    "assets/svgs/logout.svg",
                    width: 25,
                    height: 25,
                  ),

                  Center(
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontSize: 21,
                        fontFamily: "Gilroy",
                        fontWeight:
                            FontWeight.w500, // Reduced to fit comfortably
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer({required String path, required String text}) {
    return Container(
      width: double.infinity,
      height: 65,
      // padding: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          SizedBox(height: 10),

          Row(
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 6),
              SvgPicture.asset("$path"),

              Text(
                "$text",
                style: TextStyle(
                  fontFamily: "Girloy",
                  fontSize: 18,

                  fontWeight: FontWeight.w600,
                  color: Color(0xFF181725),
                ),
              ),

              Spacer(),
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
