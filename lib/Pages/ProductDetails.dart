import 'package:flutter/material.dart';
import 'package:medora/Pages/CheckOut.dart';
import 'package:medora/Pages/MedicalDevicesScreen.dart';
import 'package:medora/Pages/Reviews.dart';
import 'package:share_plus/share_plus.dart';

class Productdetails extends StatefulWidget {
  final Map<String, dynamic> product;
  final List<Map<String, dynamic>> recommendedProducts;

  const Productdetails({
    super.key,
    required this.product,
    required this.recommendedProducts,
  });

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

var num = 1;

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F3F3),
      appBar: AppBar(
        title: const Text(
          'Product Details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xffEFF1F1),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Share.share(
                'Check out this great product: ${widget.product['title']} for only ${widget.product['price']}!',
                subject: 'Medora - Product Recommendation',
              );
            },
            icon: const Icon(Icons.ios_share),
          )
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 22,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const MedicalDevicesScreen()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
              child: Image.asset(
                widget.product['image'],
                width: 400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20),
              child: Text(
                widget.product['title'],
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 20),
              child: Text(
                widget.product['price'],
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 20),
              child: Text(
                'Description',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5.0, left: 20),
              child: Text(
                'Monitor your blood pressure at home with the Digital Blood Pressure Monitor. Designed for accuracy and ease of use, this device helps you stay on top of your heart health. Ideal for all ages, with a clear digital display and comfortable cuff.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 20),
              child: Text(
                'Quantity',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 10),
              child: Container(
                width: 325,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 235, 235, 235),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (num > 1) {
                            num--;
                          }
                        });
                      },
                      icon: const Icon(Icons.remove, color: Colors.grey),
                    ),
                    const Spacer(),
                    Text(
                      num.toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          num++;
                        });
                      },
                      icon: const Icon(Icons.add, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: Row(
                children: [
                  const Text(
                    'Reviews',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReviewsPage()),
                      );
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 127, 127, 127),
                      ),
                    ),
                  ),
                  const SizedBox(width: 3),
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.arrow_forward_ios,
                        size: 16, color: Color.fromARGB(255, 127, 127, 127)),
                  ),
                ],
              ),
            ),
            // Reviews Section (Static - you can update later)
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20),
              child: Row(
                children: [
                  Image.asset('assets/images/Star (1).png'),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 5.0),
                    child: Text(
                      '2 Days ago',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 127, 127, 127),
                      ),
                    ),
                  ),
                  const SizedBox(width: 3),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 20),
              child: Text(
                'Ebrahim baroky',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5.0, left: 20),
              child: Text(
                'Excellent product! I bought this for my parents and it made daily monitoring much easier.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(top: 30.0, left: 20),
              child: Row(
                children: [
                  Text(
                    'You May Also Like',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 127, 127, 127),
                    ),
                  ),
                  SizedBox(width: 3),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.arrow_forward_ios,
                        size: 16, color: Color.fromARGB(255, 127, 127, 127)),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 30),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xffF5F3F3),
                      border: Border.all(color: const Color(0xffD5D4D4)),
                    ),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 28,
                      color: Color(0xff484C52),
                    ),
                  ),
                  const SizedBox(width: 15),
                  SizedBox(
                    width: 250,
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
                              builder: (context) => const Checkout()),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Check Out',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
