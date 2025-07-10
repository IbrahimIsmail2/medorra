import 'package:flutter/material.dart';
import 'package:medora/Pages/CheckOut.dart';
import 'package:medora/Pages/MedicalDevicesScreen.dart';
import 'package:medora/Pages/ProductDetails.dart';
import 'package:medora/Pages/Write_Reviews.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F3F3),
      appBar: AppBar(
        title: const Text(
          'Reviews',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xffEFF1F1),
        centerTitle: true,
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
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 20,
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/Star (2).png'),
                  const Spacer(
                    flex: 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 5.0),
                    child: Text(
                      'A week ago',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 127, 127, 127),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10.0,
                left: 20,
              ),
              child: Text(
                'Dr Hala Ayman',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 5.0,
                left: 20,
              ),
              child: Text(
                'Easy to use and very accurate. I recommend this for patients who need to monitor their blood pressure daily. The screen is clear and the cuff is comfortable.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 20,
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/Star (2).png'),
                  const Spacer(
                    flex: 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 5.0),
                    child: Text(
                      'A week ago',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 127, 127, 127),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10.0,
                left: 20,
              ),
              child: Text(
                'Dr Hala Ayman',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 5.0,
                left: 20,
              ),
              child: Text(
                'Easy to use and very accurate. I recommend this for patients who need to monitor their blood pressure daily. The screen is clear and the cuff is comfortable.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 20,
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/Star (2).png'),
                  const Spacer(
                    flex: 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 5.0),
                    child: Text(
                      'A week ago',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 127, 127, 127),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10.0,
                left: 20,
              ),
              child: Text(
                'Dr Hala Ayman',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 5.0,
                left: 20,
              ),
              child: Text(
                'Easy to use and very accurate. I recommend this for patients who need to monitor their blood pressure daily. The screen is clear and the cuff is comfortable.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 20,
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/Star (2).png'),
                  const Spacer(
                    flex: 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 5.0),
                    child: Text(
                      'A week ago',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 127, 127, 127),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10.0,
                left: 20,
              ),
              child: Text(
                'Dr Hala Ayman',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 5.0,
                left: 20,
              ),
              child: Text(
                'Easy to use and very accurate. I recommend this for patients who need to monitor their blood pressure daily. The screen is clear and the cuff is comfortable.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 20,
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/Star (2).png'),
                  const Spacer(
                    flex: 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 5.0),
                    child: Text(
                      'A week ago',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 127, 127, 127),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10.0,
                left: 20,
              ),
              child: Text(
                'Dr Hala Ayman',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 5.0,
                left: 20,
              ),
              child: Text(
                'Easy to use and very accurate. I recommend this for patients who need to monitor their blood pressure daily. The screen is clear and the cuff is comfortable.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 15, left: 60),
              child: SizedBox(
                width: 275,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6FC0D3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WriteReviews()),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Write Review',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
