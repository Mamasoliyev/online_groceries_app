import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        spacing: 20,
        children: [
          SizedBox(height: 40),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: List.generate(10, (index) => cardBuilder()),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: List.generate(10, (index) => buildProductCard()),
            ),
          ),
        ],
      ),
    );
  }
}

Center cardBuilder() {
  return Center(
    child: Container(
      padding: EdgeInsets.only(left: 15, top: 15),
      height: 250,
      width: 173,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xFFFFFFFF),
        border: Border.all(color: const Color.fromARGB(255, 191, 189, 189)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 7),
          Center(
            child: Image.asset(
              "assets/images/banana.jpg",
              height: 80,
              width: 100,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Organic Bananas",
            style: TextStyle(
              fontFamily: "Girloy-Bold",
              fontSize: 17,

              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6),
          Text(
            "7pcs, Priceg",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: "Gilroy-Medium",
              color: const Color.fromARGB(137, 0, 0, 0),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 55,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Text(
                  "\$4.99",
                  style: TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                height: 46,
                width: 46,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xFF00B36F),
                ),
                child: Text(
                  "+",
                  textAlign: TextAlign.center, // Ensure text is centered
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 30, // Reduced to fit comfortably
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Container buildProductCard() {
  return Container(
    width: 180,
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image.asset("assets/images/banana.jpg")),
        SizedBox(height: 20),
        Text(
          "Organic bananas",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "7pcs, Priceg",
          style: TextStyle(color: Colors.black54, fontSize: 15),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$4.99",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            IconButton.filled(
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Color(0xFF53B175),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ],
    ),
  );
}
