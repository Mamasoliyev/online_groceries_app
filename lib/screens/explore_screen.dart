import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  // Qidiruv maydoni
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search, color: Colors.black54),
                          const SizedBox(width: 8),
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Egg',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Matnni tozalash funksiyasi (keyinchalik qo‘shilishi mumkin)
                            },
                            child: const Icon(
                              Icons.close,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Filter tugmasi
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.tune), // yoki Icons.filter_list
                      onPressed: () {
                        // Filter menyusini ochish funksiyasi
                      },
                    ),
                  ),
                ],
              ),
              Row(children: [cards[0], cards[1]]),
              Row(children: [cards[2], cards[3]]),
              Row(children: [cards[4], cards[5]]),
            ],
          ),
        ),
      ),
    );
  }
}

Center cardBuilder({
  required String path,
  required String itemName,
  required String amount,
  required double price,
}) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.only(left: 15, top: 15),
        height: 260,
        width: 183,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xFFFFFFFF),
          border: Border.all(color: const Color.fromARGB(255, 191, 189, 189)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 7),
            Expanded(
              child: Center(
                child: Image.asset(
                  "assets/images/$path.jpg",
                  height: 122,
                  width: 122,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              itemName,
              style: TextStyle(
                fontFamily: "Girloy-Bold",
                fontSize: 17,

                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),
            Text(
              "$amount, Price",
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
                    "\$$price",
                    style: TextStyle(
                      fontFamily: "Gilroy-Regular",
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
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
    ),
  );
}

List<Widget> cards = [
  cardBuilder(
    path: "red_egg",
    itemName: "Egg Chicken Red",
    amount: "4pcs",
    price: 1.99,
  ),
  cardBuilder(
    path: "white_egg",
    itemName: "Egg Chicken White",
    amount: "180gr",
    price: 1.50,
  ),
  cardBuilder(
    path: "pasta",
    itemName: "Egg pasta",
    amount: "30gm",
    price: 15.99,
  ),
  cardBuilder(
    path: "red_noodles",
    itemName: "Banana",
    amount: "7pre",
    price: 15.99,
  ),
  cardBuilder(path: "eggless", itemName: "Banana", amount: "7pre", price: 4.97),
  cardBuilder(
    path: "yellow_noodles",
    itemName: "Banana",
    amount: "7pre",
    price: 4.97,
  ),
];
