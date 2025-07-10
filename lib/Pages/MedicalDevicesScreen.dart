//

import 'package:flutter/material.dart';
import 'package:medora/Pages/ProductDetails.dart';

class MedicalDevicesScreen extends StatefulWidget {
  const MedicalDevicesScreen({super.key});

  @override
  State<MedicalDevicesScreen> createState() => _MedicalDevicesScreenState();
}

class _MedicalDevicesScreenState extends State<MedicalDevicesScreen> {
  final List<Map<String, dynamic>> topDeals = [
    {
      "image": "assets/images/88.png",
      "title": "Biological Microscope",
      "subtitle": "Lab LED Microscope 100...",
      "price": "472",
      "oldPrice": null,
      "discount": null,
      "rating": "5",
    },
    {
      "image": "assets/images/77.png",
      "title": "Vaunn Exerciser",
      "subtitle": "Medical Pedal Exerciser",
      "price": "1000",
      "oldPrice": "2000",
      "discount": "50%",
      "rating": "3.5",
    },
    {
      "image": "assets/images/99.png",
      "title": "YXW Adjustable",
      "subtitle": "Underarm Crutches, Ary...",
      "price": "120",
      "oldPrice": "200",
      "discount": "40%",
      "rating": "4",
    },
    {
      "image": "assets/images/100.png",
      "title": "Mania Tooth",
      "subtitle": "Repair Kit, Moldable Fake..",
      "price": "4000",
      "oldPrice": "5000",
      "discount": "20%",
      "rating": "4.5",
    },
    {
      "image": "assets/images/340b829bdfdaec740ff0ab25812a5806a6286368 (1).png",
      "title": "Beurer BM27",
      "subtitle": "Blood Pressure Monitor",
      "price": "650",
      "oldPrice": "800",
      "discount": "18%",
      "rating": "4.8",
    },
    {
      "image": "assets/images/image1 (2).png",
      "title": "Medical Infrared",
      "subtitle": "Forehead Thermometer",
      "price": "320",
      "oldPrice": "450",
      "discount": "28%",
      "rating": "4.3",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final bgColor = Theme.of(context).scaffoldBackgroundColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical Devices'),
        backgroundColor:
            Theme.of(context).appBarTheme.backgroundColor ??
            Theme.of(context).primaryColor,
      ),
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: topDeals.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.68,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Productdetails(
                      product: topDeals[index],
                      recommendedProducts: topDeals,
                    ),
                  ),
                );
              },
              child: _buildDealCard(index, context, isDarkMode),
            );
          },
        ),
      ),
    );
  }

  Widget _buildDealCard(int index, BuildContext context, bool isDarkMode) {
    var product = topDeals[index];
    product['isAdded'] ??= false;
    product['isFavorite'] ??= false;

    final cardColor = Theme.of(context).cardColor;
    final textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;

    return StatefulBuilder(
      builder: (context, setStateSB) {
        return Container(
          width: 40,
          padding: const EdgeInsets.all(8),
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
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    setStateSB(() {
                      product['isFavorite'] = !(product['isFavorite'] ?? false);
                    });
                  },
                  child: Icon(
                    product['isFavorite'] == true
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.orange,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    product['image'],
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                product['title'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: textColor,
                ),
              ),
              Text(
                product['subtitle'],
                style: TextStyle(fontSize: 12, color: Colors.grey[500]),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    "EGP ${product['price']}",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                  if (product['oldPrice'] != null) ...[
                    const SizedBox(width: 4),
                    Text(
                      "EGP ${product['oldPrice']}",
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "-${product['discount']}",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ],
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 16),
                    const SizedBox(width: 4),
                    Text(product['rating'], style: TextStyle(color: textColor)),
                    const Spacer(flex: 2),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: product['isAdded']
                              ? Colors.orange
                              : (isDarkMode
                                    ? Colors.grey[850]
                                    : Colors.grey.shade100),
                          foregroundColor: product['isAdded']
                              ? Colors.white
                              : Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                        ),
                        onPressed: () {
                          setStateSB(() {
                            product['isAdded'] = !(product['isAdded'] ?? false);
                          });
                        },
                        icon: Icon(
                          product['isAdded']
                              ? Icons.check
                              : Icons.add_shopping_cart,
                          color: product['isAdded']
                              ? Colors.white
                              : Colors.orange,
                          size: 18,
                        ),
                        label: Text(
                          product['isAdded'] ? "Added" : "Add",
                          style: TextStyle(
                            color: product['isAdded']
                                ? Colors.white
                                : Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
