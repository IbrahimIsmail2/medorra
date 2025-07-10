import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoOrder extends StatelessWidget {
  const NoOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F3F3),
      appBar: AppBar(
        title: Text(
          'Orders',
          style: GoogleFonts.roboto(
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: const Color(0xffEFF1F1),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 22,
          ),
          onPressed: () {},
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 225,
            left: 125,
            child: Image.asset('assets/images/Vector.png'),
          ),
          Positioned(
            top: 205,
            left: 230,
            child: Image.asset(
              'assets/images/Vector (1).png',
              height: 48,
            ),
          ),
          Positioned(
            bottom: 300,
            left: 135,
            child: Text(
              'No Orders yet',
              style: GoogleFonts.roboto(
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            bottom: 240,
            left: 115,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 129, 194, 208),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text(
                'Explore Categories',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
