import 'package:flutter/material.dart';

import 'homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.all(25),
            child: Center(
              child: Image.asset(
                "lib/images/nike.png",
                height: 240,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),

          //title

          const Text(
            "Just Do It ",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(
            height: 35,
          ),
          //sub title
          const Center(
            child: Text(
              "Brand new sneakers and kicks made with premium quality  ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    "Shop Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
