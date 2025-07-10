import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medora/Pages/ProfilePage.dart';

class ShowOrders extends StatefulWidget {
  const ShowOrders({super.key});

  @override
  State<ShowOrders> createState() => _ShowOrdersState();
}

class _ShowOrdersState extends State<ShowOrders> {
  int selectedIndex = 0;

  final List<String> categories = [
    'Processing',
    'Shipped',
    'Delivered',
    'Returned',
    'Cancelled',
  ];

  final List<Widget> categoryContents = [
    const Center(child: Text('Processing Orders')),
    const Center(child: Text('Shipped Orders')),
    const Center(child: Text('Delivered Orders')),
    const Center(child: Text('Returned Orders')),
    const Center(child: Text('Cancelled Orders')),
  ];

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
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(categories.length, (index) {
                final isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? const Color.fromARGB(255, 129, 194, 208)
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      categories[index],
                      style: GoogleFonts.roboto(
                        color: isSelected ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(height: 20),
          // Show selected category content
          Expanded(
            child: categoryContents[selectedIndex],
          ),
        ],
      ),
    );
  }
}
