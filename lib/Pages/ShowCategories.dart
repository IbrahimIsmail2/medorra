//

import 'package:flutter/material.dart';
import 'package:medora/Pages/MedicalDevicesScreen.dart';
import 'package:medora/Pages/home.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<Map<String, String>> categories = [
    {'name': 'Medical Devices', 'image': 'assets/images/22.png'},
    {'name': 'Surgical Supplies', 'image': 'assets/images/11.png'},
    {'name': 'Baby Care', 'image': 'assets/images/images.jfif'},
    {
      'name': 'Cosmetics',
      'image': 'assets/images/b3c65ed2-1c85-4f8f-9bd0-b3503d592ffe.jpg',
    },
    {'name': 'Home Care', 'image': 'assets/images/1444.jpg'},
  ];

  List<Map<String, String>> filteredCategories = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredCategories = categories;
  }

  void filterCategories(String query) {
    final results = categories.where((category) {
      final name = category['name']!.toLowerCase();
      final input = query.toLowerCase();
      return name.contains(input);
    }).toList();

    setState(() {
      filteredCategories = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDarkMode ? Colors.white : Colors.black;
    final cardColor = Theme.of(context).cardColor;
    final bgColor = Theme.of(context).scaffoldBackgroundColor;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
        ),
        backgroundColor:
            Theme.of(context).appBarTheme.backgroundColor ??
            Theme.of(context).primaryColor,
        title: const Text(
          'Categories',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 25,
              ),
              child: SizedBox(
                height: 55,
                child: TextField(
                  controller: searchController,
                  onChanged: filterCategories,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: isDarkMode ? Colors.grey[850] : Colors.white,
                    hintText: 'Search...',
                    hintStyle: TextStyle(
                      color: isDarkMode ? Colors.grey[300] : Colors.grey[500],
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: isDarkMode ? Colors.grey[400] : Colors.grey[400],
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: isDarkMode
                            ? Colors.grey[700]!
                            : const Color.fromARGB(255, 243, 239, 239),
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: isDarkMode
                            ? Colors.tealAccent
                            : const Color(0xFF94C7D2),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                itemCount: filteredCategories.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  String categoryName = filteredCategories[index]['name']!;
                  String imagePath = filteredCategories[index]['image']!;
                  return _buildProductCard(
                    categoryName,
                    imagePath,
                    textColor,
                    cardColor,
                    isDarkMode,
                    context,
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(
    String title,
    String imagePath,
    Color textColor,
    Color cardColor,
    bool isDarkMode,
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        if (title == 'Medical Devices') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MedicalDevicesScreen(),
            ),
          );
        }
      },
      child: Container(
        width: 195,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isDarkMode ? Colors.grey[700]! : Colors.grey.shade300,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: isDarkMode
                    ? Theme.of(context).colorScheme.surface
                    : const Color.fromARGB(255, 226, 226, 226),
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
