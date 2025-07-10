import 'package:flutter/material.dart';
import 'package:medora/Pages/Confirmation.dart';
import 'package:medora/Pages/Information.dart';
import 'package:medora/Pages/Payment.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int _currentStep = 0;

  final List<String> steps = ['Information', 'Payment', 'Confirmation'];

  Widget _buildStepContent() {
    switch (_currentStep) {
      case 0:
        return const Information();
      case 1:
        return const Payment();
      case 2:
        return const Confirmation();
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffEDF0F1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: const Color(0xffF5F3F3),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: List.generate(steps.length, (index) {
                return Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentStep = index;
                        });
                      },
                      child: Text(
                        steps[index],
                        style: TextStyle(
                          color: _currentStep == index
                              ? Colors.black
                              : Colors.grey,
                          fontSize: 18,
                          fontWeight: _currentStep == index
                              ? FontWeight.w600
                              : FontWeight.w500,
                        ),
                      ),
                    ),
                    if (index != steps.length - 1) ...[
                      const SizedBox(width: 5),
                      const Icon(Icons.arrow_forward_ios,
                          size: 16, color: Colors.grey),
                      const SizedBox(width: 5),
                    ]
                  ],
                );
              }),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: _buildStepContent(),
            ),
          ),
        ],
      ),
    );
  }
}
