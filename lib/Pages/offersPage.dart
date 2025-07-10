import 'package:flutter/material.dart';
import 'package:medora/Pages/ProfilePage.dart';
import 'package:medora/Pages/SplashScreen.dart';
import 'package:medora/Pages/home.dart';
import 'package:shimmer/shimmer.dart';

class OffersScreen extends StatelessWidget {
  OffersScreen({super.key});
  TextEditingController searchController = TextEditingController();
  final List<Map<String, dynamic>> topDeals = List.generate(
    8,
    (index) => {
      "title": index % 2 == 0 ? "Biological Microscope" : "Vaunn",
      "subtitle": index % 2 == 0
          ? "Lab LED Microscope 100..."
          : "Medical Pedal Exerciser",
      "price": index % 2 == 0 ? "472" : "1000",
      "oldPrice": index % 2 == 0 ? null : "2000",
      "discount": index % 2 == 0 ? null : "50%",
      "rating": index % 2 == 0 ? "5" : "3.5",
      "isFavorite": false,
      "isAdded": false,
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Offers',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xffEFF1F1),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.shopping_cart_outlined,
            ),
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
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 25),
                  child: SizedBox(
                    height: 55,
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[400],
                        ),
                        suffixIcon: const Icon(
                          Icons.mic,
                          color: Color.fromARGB(255, 135, 192, 205),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 243, 239, 239),
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xFF94C7D2),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xffF7F9FE),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                            color: const Color(0xFF94C7D2), width: 2),
                      ),
                      child: const Center(child: Text('40% OFF')),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xffF7F9FE),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                            color: const Color(0xFF94C7D2), width: 2),
                      ),
                      child: const Center(child: Text('30% OFF')),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xffF7F9FE),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                            color: const Color(0xFF94C7D2), width: 2),
                      ),
                      child: const Center(child: Text('60% OFF')),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 340,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 160, 214, 227),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 18,
                        left: 5,
                        child: Image.asset('assets/images/Ellipse 1141.png')),
                    Positioned(
                      top: 0,
                      child: Image.asset(
                        'assets/images/image 236.png',
                        height: 150,
                      ),
                    ),
                    const Positioned(
                        top: 30,
                        right: 55,
                        child: Text(
                          'Sale Up to 60%',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        )),
                    const Positioned(
                        top: 70,
                        right: 25,
                        child: Text(
                          'FOR Surgical Supplies',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return _buildDealCard(index);
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 340,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 160, 214, 227),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 5,
                        left: 5,
                        child: Image.asset('assets/images/Ellipse 1141.png')),
                    Positioned(
                      top: 0,
                      left: 32,
                      child: Image.asset(
                        'assets/images/image 238.png',
                        height: 150,
                      ),
                    ),
                    const Positioned(
                        top: 30,
                        right: 55,
                        child: Text(
                          'Sale Up to 30%',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        )),
                    const Positioned(
                        top: 70,
                        right: 25,
                        child: Text(
                          'FOR Medical Supplies',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return _buildDealCard(index);
                    },
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDealCard(int index) {
    var product = topDeals[index];

    product['isAdded'] ??= false;

    return StatefulBuilder(
      builder: (context, setStateSB) {
        return Container(
          width: 40,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Colors.grey.shade300),
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
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade400,
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(product['title'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14)),
              Text(product['subtitle'],
                  style: const TextStyle(fontSize: 12, color: Colors.grey)),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text("EGP ${product['price']}",
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold)),
                  if (product['oldPrice'] != null) ...[
                    const SizedBox(width: 4),
                    Text("EGP ${product['oldPrice']}",
                        style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 12,
                            color: Colors.grey)),
                    const SizedBox(width: 4),
                    Text("-${product['discount']}",
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange)),
                  ]
                ],
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 16),
                    const SizedBox(width: 4),
                    Text(product['rating']),
                    const Spacer(
                      flex: 2,
                    ),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: product['isAdded']
                              ? Colors.orange
                              : Colors.grey.shade100,
                          foregroundColor:
                              product['isAdded'] ? Colors.white : Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
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
                          color:
                              product['isAdded'] ? Colors.white : Colors.orange,
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
              )
            ],
          ),
        );
      },
    );
  }
}
