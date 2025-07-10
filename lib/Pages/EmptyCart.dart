import 'package:flutter/material.dart';
import 'package:medora/Pages/ShowCategories.dart';
import 'package:medora/Pages/home.dart';

class Emptycart extends StatelessWidget {
  const Emptycart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffEFF1F1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
        ),
      ),
      backgroundColor: const Color(0xffF5F3F3),
      body: Padding(
        padding: const EdgeInsets.only(top: 175.0, left: 85),
        child: Column(
          children: [
            Image.asset(
              'assets/images/542.png',
              height: 150,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Your Cart is Empty',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6FC0D3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CategoriesScreen()),
                  );
                },
                child: const Text(
                  "Explore Categories",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
