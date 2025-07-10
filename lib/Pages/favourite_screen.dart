//

import 'package:flutter/material.dart';
import 'package:medora/Pages/Settings.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final List<Map<String, dynamic>> topDeals = [
    {
      "image": "assets/images/88.png",
      "title": "Biological Microscope",
      "subtitle": "Lab LED Microscope 100...",
      "price": "EGP 472",
      "oldPrice": null,
      "discount": null,
      "rating": "5",
      "isFavorite": false,
      "isAdded": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final bgColor = Theme.of(context).scaffoldBackgroundColor;
    final textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
    final cardColor = Theme.of(context).cardColor;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: isDark ? const Color(0xFF1E1E1E) : Colors.white,
        iconTheme: IconThemeData(color: isDark ? Colors.white : Colors.black),
        title: Text(
          'Favourite',
          style: TextStyle(
            color: isDark ? Colors.white : Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Settings()),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: topDeals.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Vector (251).png',
                            height: 120,
                            width: 150,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Your favorite list is empty",
                            style: TextStyle(fontSize: 20, color: textColor),
                          ),
                        ],
                      ),
                    )
                  : GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 14,
                      crossAxisSpacing: 14,
                      childAspectRatio: 0.68,
                      children: List.generate(topDeals.length, (index) {
                        return _buildCard(
                          topDeals[index],
                          index,
                          cardColor,
                          textColor,
                        );
                      }),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(
    Map<String, dynamic> item,
    int index,
    Color cardColor,
    Color textColor,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Image.asset(
              item['image'],
              height: 115,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 85,
                  alignment: Alignment.center,
                  color: Colors.grey[300],
                  child: const Icon(
                    Icons.broken_image,
                    size: 40,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          Text(
            item['title'],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            item['subtitle'],
            style: TextStyle(fontSize: 11, color: Colors.grey[600]),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                item['price'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 4),
              item['oldPrice'] != null
                  ? Text(
                      item['oldPrice'],
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    )
                  : const SizedBox.shrink(),
              const SizedBox(width: 2),
              item['discount'] != null
                  ? Text(
                      item['discount'],
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: TextButton.icon(
                  onPressed: () {
                    setState(() {
                      item['isAdded'] = !(item['isAdded'] ?? false);
                    });
                  },
                  icon: item['isAdded']
                      ? const Icon(Icons.check, color: Colors.white, size: 18)
                      : const SizedBox.shrink(),
                  label: Text(
                    item['isAdded'] ? 'Added' : 'Add',
                    style: TextStyle(
                      color: item['isAdded'] ? Colors.white : Colors.black,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: item['isAdded']
                        ? Colors.orange
                        : const Color(0xff6FC0D3),
                    side: const BorderSide(color: Color(0xFF9ED9E6)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    textStyle: const TextStyle(fontSize: 13),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              GestureDetector(
                onTap: () {
                  setState(() {
                    topDeals.removeAt(index);
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF9ED9E6)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(Icons.delete, size: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
