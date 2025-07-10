import 'package:flutter/material.dart';
import 'package:medora/Pages/Payment.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  final List<String> countryCodes = [
    '+20',
    '+1',
    '+44',
    '+91',
    '+971',
    '+49',
    '+33',
    '+81'
  ];
  String selectedCode = '+20';

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F3F3),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: SingleChildScrollView(
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
                        padding: const EdgeInsets.only(left: 20.0),
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
                'Contact Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15),

              // Name Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: TextField(
                  controller: nameController,
                  decoration: _inputDecoration('Name'),
                ),
              ),
              const SizedBox(height: 15),

              // Phone Number
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: _inputDecoration('Phone Number').copyWith(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedCode,
                          dropdownColor: Colors.white,
                          iconEnabledColor:
                              const Color.fromARGB(255, 171, 177, 182),
                          style: const TextStyle(
                              color: Color.fromARGB(255, 144, 144, 144),
                              fontSize: 16),
                          items: countryCodes.map((code) {
                            return DropdownMenuItem(
                              value: code,
                              child: Text(code),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedCode = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    prefixIconConstraints:
                        const BoxConstraints(minWidth: 0, minHeight: 0),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                'Shipping Address',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15),

              // Address Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: TextField(
                  controller: addressController,
                  maxLines: 5,
                  decoration: _inputDecoration('Address').copyWith(
                    alignLabelWithHint: true,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: TextField(
                  controller: stateController,
                  decoration: _inputDecoration('State/Province'),
                ),
              ),

              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: TextField(
                  controller: cityController,
                  decoration: _inputDecoration('City'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 65, bottom: 25),
                child: SizedBox(
                  width: 225,
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
              )
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      filled: true,
      fillColor: const Color(0xffF5F3F3),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
          color: Color.fromARGB(255, 171, 177, 182),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
          color: Color.fromARGB(255, 171, 177, 182),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Color(0xff4CA6B3), width: 2),
      ),
    );
  }
}
