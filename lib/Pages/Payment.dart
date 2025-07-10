import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

String selectedPayment = '';
bool _isRemembered = false;

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F3F3),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 20),
              const Text(
                'Payment Method',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15),
              paymentOption('Visa', 'assets/images/Group22.png'),
              paymentOption('Master Card', 'assets/images/g3125.png'),
              paymentOption(
                  'Local Cards', 'assets/images/Group 2085663289.png'),
              paymentOption('Mobile Wallet', 'assets/images/vodafone-cash.png'),
              paymentOption('Cash', 'assets/images/cash.png'),
              const SizedBox(height: 20),
              Container(
                height: 245,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(255, 238, 235, 235),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Payment Details',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Card number',
                          labelStyle: const TextStyle(color: Color(0xff8D8D8D)),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/Group.png',
                              width: 24,
                              height: 24,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color:
                                  Color(0xff8D8D8D), // your custom border color
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xff4CA6B3), // same color as enabled
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 150,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Expiry date',
                                  labelStyle:
                                      const TextStyle(color: Color(0xff8D8D8D)),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(
                                          0xff8D8D8D), // your custom border color
                                      width: 2,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(
                                          0xff4CA6B3), // same color as enabled
                                      width: 2,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            SizedBox(
                              width: 150,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Security code',
                                  labelStyle:
                                      const TextStyle(color: Color(0xff8D8D8D)),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(
                                          0xff8D8D8D), // your custom border color
                                      width: 2,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(
                                          0xff4CA6B3), // same color as enabled
                                      width: 2,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Row(
                          children: [
                            Checkbox(
                              value: _isRemembered,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isRemembered = value ?? false;
                                });
                              },
                              activeColor: const Color(
                                  0xff4CA6B3), // Optional: your preferred color
                            ),
                            const Text(
                              'Save Card for Future Purchases',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 125,
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
                      width: 125,
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
                                  builder: (context) => const Payment()),
                            );
                          },
                          child: const Text(
                            'Continue',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget paymentOption(String method, String? asset) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Radio<String>(
            activeColor: const Color(0xff4CA6B3),
            value: method,
            groupValue: selectedPayment,
            onChanged: (value) {
              setState(() {
                selectedPayment = value!;
              });
            },
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(method,
                style: const TextStyle(fontWeight: FontWeight.w400)),
          ),
          if (asset != null)
            Image.asset(
              asset,
              width: 75,
              height: 40,
            ),
        ],
      ),
    );
  }
}
