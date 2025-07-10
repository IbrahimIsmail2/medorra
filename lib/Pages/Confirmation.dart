import 'package:flutter/material.dart';
import 'package:medora/Pages/Information.dart';
import 'package:medora/Pages/Payment.dart';
import 'package:medora/Pages/home.dart';

class Confirmation extends StatelessWidget {
  const Confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F3F3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xffE8EEF0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, bottom: 0),
                      child: Image.asset(
                        'assets/images/340b829bdfdaec740ff0ab25812a5806a6286368 (1).png',
                        width: 75,
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0, top: 30),
                          child: Text('Digital Blood Pressure Monitor'),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            'EGP 650',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 171, 177, 182),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20, right: 10),
              child: Row(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Contact Information',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Information()),
                      );
                    },
                    child: const Text(
                      'Change',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5D6367)),
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios,
                      size: 14, color: Color(0xff5D6367))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, top: 20, right: 20),
              child: Row(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Name',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffA3ABB0)),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                  Text(
                    'Hala Ayman',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5D6367)),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, top: 8, right: 20),
              child: Row(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffA3ABB0)),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                  Text(
                    '+20 123456789',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5D6367)),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Divider(
                color: Color(0xffDDE4EC),
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Row(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Shipping Address',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Information()),
                      );
                    },
                    child: const Text(
                      'Change',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5D6367)),
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios,
                      size: 14, color: Color(0xff5D6367))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, top: 20, right: 20),
              child: Row(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Address',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffA3ABB0)),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                  Text(
                    'Tahrir Street, Dokki,Giza',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5D6367)),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, top: 8, right: 20),
              child: Row(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'State/Province',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffA3ABB0)),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                  Text(
                    'Giza',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5D6367)),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, top: 8, right: 20),
              child: Row(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'City',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffA3ABB0)),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                  Text(
                    'Giza',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5D6367)),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Divider(
                color: Color(0xffDDE4EC),
                thickness: 2,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 10),
              child: Row(children: [
                SizedBox(height: 20),
                Text(
                  'Shipping Method',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ]),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, top: 20, right: 20),
              child: Row(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Method',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffA3ABB0)),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                  Text(
                    'DHL Express',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5D6367)),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Divider(
                color: Color(0xffDDE4EC),
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10),
              child: Row(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Payment Method',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Information()),
                      );
                    },
                    child: const Text(
                      'Change',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5D6367)),
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios,
                      size: 14, color: Color(0xff5D6367))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, top: 20, right: 20),
              child: Row(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Method',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffA3ABB0)),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                  Text(
                    'Master Card',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5D6367)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 130,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 203, 199, 199),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Payment()),
                          );
                        },
                        child: const Text(
                          'Back',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18),
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: 130,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF6FC0D3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25.0)),
                                ),
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 25),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            'assets/images/Illustration (1).png', // Make sure this image exists in assets
                                            height: 120,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            'Order Success!',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            'Your order has been confirmed, and we will prepare for your delivery order..',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey),
                                          ),
                                          const SizedBox(height: 20),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFF6FC0D3),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const Home()),
                                                  );
                                                },
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.0,
                                                      vertical: 10),
                                                  child: Text('Go to Home',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white)),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                        ]),
                                  );
                                });
                          },
                          child: const Text(
                            'Check out',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )))
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
