// import 'package:flutter/material.dart';
// import 'package:medora/Models/Articles_model.dart';
// import 'package:medora/Pages/ArticleDetailsPage.dart';
// import 'package:medora/Pages/ChatGif.dart';
// import 'package:medora/Pages/Show_Articles.dart';
// import 'package:shimmer/shimmer.dart';

// class HomeContentPage extends StatefulWidget {
//   const HomeContentPage({super.key});

//   @override
//   State<HomeContentPage> createState() => _HomeContentPageState();
// }

// class _HomeContentPageState extends State<HomeContentPage> {
//   final int _bottomNavIndex = 0;

//   final Map<String, String> categoryImages = {
//     'Medical Devices': 'assets/images/22.png',
//     'Surgical Supplies': 'assets/images/11.png',
//     'Home Care': 'assets/images/1444.jpg',
//   };

//   final List<Map<String, dynamic>> topDeals = [
//     {
//       "image": "assets/images/88.png",
//       "title": "Biological Microscope",
//       "subtitle": "Lab LED Microscope 100...",
//       "price": "472",
//       "oldPrice": null,
//       "discount": null,
//       "rating": "5",
//       "isFavorite": false,
//       "isAdded": false,
//     },
//     {
//       "image": "assets/images/77.png",
//       "title": "Vaunn Exerciser",
//       "subtitle": "Medical Pedal Exerciser",
//       "price": "1000",
//       "oldPrice": "2000",
//       "discount": "50%",
//       "rating": "3.5",
//       "isFavorite": false,
//       "isAdded": false,
//     },
//     {
//       "image": "assets/images/99.png",
//       "title": "YXW Adjustable",
//       "subtitle": "Underarm Crutches, Ary... ",
//       "price": "120",
//       "oldPrice": "200",
//       "discount": "40%",
//       "rating": "4",
//       "isFavorite": false,
//       "isAdded": false,
//     },
//     {
//       "image": "assets/images/100.png",
//       "title": "Mania Tooth",
//       "subtitle": "Repair Kit, Moldable Fake..",
//       "price": "4000",
//       "oldPrice": "5000",
//       "discount": "20%",
//       "rating": "4.5",
//       "isFavorite": false,
//       "isAdded": false,
//     },
//     {
//       "image": "assets/images/66.png",
//       "title": "Beurer BM27",
//       "subtitle": "Blood Pressure Monit...",
//       "price": "650",
//       "oldPrice": "800",
//       "discount": "18%",
//       "rating": "4.8",
//       "isFavorite": false,
//       "isAdded": false,
//     },
//     {
//       "image": "assets/images/image1 (2).png",
//       "title": "medical infrared",
//       "subtitle": "forehead thermomter",
//       "price": "320",
//       "oldPrice": "450",
//       "discount": "28%",
//       "rating": "4.3",
//       "isFavorite": false,
//       "isAdded": false,
//     },
//   ];

//   final List<ArticleModel> allArticles = [
//     ArticleModel(
//       title: "The Importance of Regular Health Checkups",
//       quote: "Early detection can save lives.",
//       imagePath: "assets/images/article 1.jpg",
//       fullArticle:
//           "Many people only visit the doctor when they are feeling unwell...",
//     ),
//     ArticleModel(
//       title: "How Sleep Affects Your Health",
//       quote: "Getting enough quality sleep is crucial for your overall health.",
//       imagePath: "assets/images/article 3.jpg",
//       fullArticle:
//           "Getting enough quality sleep is crucial for your overall health...",
//     ),
//     ArticleModel(
//       title: "Nutrition Tips for a Healthy Life",
//       quote: "Eat better, feel better!",
//       imagePath: "assets/images/article 2.jpg",
//       fullArticle: "Good nutrition is one of the keys to a healthy life...",
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final List<ArticleModel> similarArticles = allArticles.take(3).toList();

//     return Scaffold(
//       backgroundColor: const Color(0xffF5F3F3),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 8.0),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 _buildTopBar(),
//                 _buildSearchBar(),
//                 _buildBanner(),
//                 const SizedBox(height: 35),
//                 _buildSectionTitle("New Arrival"),
//                 const SizedBox(height: 20),
//                 SizedBox(
//                   height: 180,
//                   child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: categoryImages.length,
//                     padding: const EdgeInsets.only(left: 20),
//                     itemBuilder: (context, index) {
//                       String categoryName =
//                           categoryImages.keys.elementAt(index);
//                       return _buildProductCard(categoryName);
//                     },
//                   ),
//                 ),

//                 const SizedBox(height: 20),
//                 _buildSectionTitle("Top Deals"),
//                 const SizedBox(height: 16),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   child: GridView.builder(
//                     itemCount: topDeals.length,
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       childAspectRatio: 0.7,
//                       crossAxisSpacing: 10,
//                       mainAxisSpacing: 10,
//                     ),
//                     itemBuilder: (context, index) {
//                       return _buildDealCard(index);
//                     },
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text(
//                         'Medical Articles',
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.w600),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const ShowArticles()),
//                           );
//                         },
//                         child: const Text(
//                           "View all",
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Color.fromARGB(255, 126, 185, 198),
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 SizedBox(
//                   height: 100,
//                   child: PageView.builder(
//                     itemCount: similarArticles.length,
//                     controller: PageController(viewportFraction: 0.9),
//                     itemBuilder: (context, index) {
//                       final similarArticle = similarArticles[index];
//                       return GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) =>
//                                   ArticleDetailsPage(article: similarArticle),
//                             ),
//                           );
//                         },
//                         child: Container(
//                           margin: const EdgeInsets.symmetric(horizontal: 8),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(15),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.grey.withOpacity(0.2),
//                                 blurRadius: 8,
//                                 offset: const Offset(0, 4),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             children: [
//                               ClipRRect(
//                                 borderRadius: const BorderRadius.only(
//                                   topLeft: Radius.circular(15),
//                                   bottomLeft: Radius.circular(15),
//                                 ),
//                                 child: Image.asset(
//                                   similarArticle.imagePath,
//                                   width: 100,
//                                   height: 80,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               const SizedBox(width: 10),
//                               Expanded(
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       vertical: 8, horizontal: 8),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         similarArticle.title,
//                                         maxLines: 2,
//                                         overflow: TextOverflow.ellipsis,
//                                         style: const TextStyle(
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.w600,
//                                         ),
//                                       ),
//                                       const SizedBox(height: 5),
//                                       Text(
//                                         similarArticle.quote,
//                                         maxLines: 1,
//                                         overflow: TextOverflow.ellipsis,
//                                         style: const TextStyle(
//                                           fontSize: 12,
//                                           color: Colors.black54,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 const SizedBox(height: 32), // Extra space for FAB
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTopBar() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       decoration: BoxDecoration(
//         color: const Color(0xffEDF0F1),
//         border: Border(
//           top: BorderSide(color: Colors.grey.shade300),
//           bottom: BorderSide(color: Colors.grey.shade300),
//         ),
//       ),
//       child: Row(
//         children: [
//           const CircleAvatar(
//             radius: 13,
//             backgroundImage:
//                 AssetImage('assets/images/person-icon-outline-2.jpg'),
//           ),
//           const SizedBox(width: 16),
//           const Text(
//             'Hi, Ahmad',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//           ),
//           const Spacer(),
//           GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const ChatPage()),
//                 );
//               },
//               child: Image.asset('assets/images/arcticons_poe-ai-chat.png',
//                   height: 30)),
//         ],
//       ),
//     );
//   }

//   Widget _buildSearchBar() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(color: Colors.grey.shade300),
//         ),
//         child: const Row(
//           children: [
//             Icon(Icons.search, color: Colors.grey),
//             SizedBox(width: 10),
//             Expanded(
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search any Product..",
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//             Icon(Icons.mic_none_outlined, color: Color(0xff8ACBDA)),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildBanner() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Image.asset(
//         'assets/images/slider.png',
//         height: 190,
//         fit: BoxFit.contain,
//       ),
//     );
//   }

//   Widget _buildSectionTitle(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//           ),
//           const Text(
//             "View all",
//             style: TextStyle(
//               fontSize: 16,
//               color: Color.fromARGB(255, 126, 185, 198),
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildProductCard(String title) {
//     String imagePath = categoryImages[title] ?? '';

//     return Container(
//       width: 195,
//       margin: const EdgeInsets.only(right: 12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(14),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: 8),
//           Expanded(
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: Image.asset(
//                 imagePath,
//                 width: double.infinity,
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           const SizedBox(height: 8),
//           Container(
//             width: double.infinity,
//             padding: const EdgeInsets.symmetric(vertical: 8),
//             decoration: const BoxDecoration(
//               color: Color.fromARGB(255, 226, 226, 226),
//             ),
//             child: Text(
//               title,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontWeight: FontWeight.w500,
//                 color: Colors.black87,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDealCard(int index) {
//     var product = topDeals[index];

//     product['isAdded'] ??= false;

//     return StatefulBuilder(
//       builder: (context, setStateSB) {
//         return Container(
//           width: 40,
//           padding: const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(14),
//             border: Border.all(color: Colors.grey.shade300),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Align(
//                 alignment: Alignment.topRight,
//                 child: GestureDetector(
//                   onTap: () {
//                     setStateSB(() {
//                       product['isFavorite'] = !(product['isFavorite'] ?? false);
//                     });
//                   },
//                   child: Icon(
//                     product['isFavorite'] == true
//                         ? Icons.favorite
//                         : Icons.favorite_border,
//                     color: Colors.orange,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Expanded(
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: Image.asset(
//                     product['image'],
//                     width: double.infinity,
//                     height: double.infinity,
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(product['title'],
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, fontSize: 14)),
//               Text(product['subtitle'],
//                   style: const TextStyle(fontSize: 12, color: Colors.grey)),
//               const SizedBox(height: 4),
//               Row(
//                 children: [
//                   Text("EGP ${product['price']}",
//                       style: const TextStyle(
//                           fontSize: 14, fontWeight: FontWeight.bold)),
//                   if (product['oldPrice'] != null) ...[
//                     const SizedBox(width: 4),
//                     Text("EGP ${product['oldPrice']}",
//                         style: const TextStyle(
//                             decoration: TextDecoration.lineThrough,
//                             fontSize: 12,
//                             color: Colors.grey)),
//                     const SizedBox(width: 4),
//                     Text("-${product['discount']}",
//                         style: const TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.orange)),
//                   ]
//                 ],
//               ),
//               const SizedBox(height: 4),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 4.0),
//                 child: Row(
//                   children: [
//                     const Icon(Icons.star, color: Colors.orange, size: 16),
//                     const SizedBox(width: 4),
//                     Text(product['rating']),
//                     const Spacer(
//                       flex: 2,
//                     ),
//                     SizedBox(
//                       width: 100,
//                       child: ElevatedButton.icon(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: product['isAdded']
//                               ? Colors.orange
//                               : Colors.grey.shade100,
//                           foregroundColor:
//                               product['isAdded'] ? Colors.white : Colors.black,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 12, vertical: 4),
//                         ),
//                         onPressed: () {
//                           setStateSB(() {
//                             product['isAdded'] = !(product['isAdded'] ?? false);
//                           });
//                         },
//                         icon: Icon(
//                           product['isAdded']
//                               ? Icons.check
//                               : Icons.add_shopping_cart,
//                           color:
//                               product['isAdded'] ? Colors.white : Colors.orange,
//                           size: 18,
//                         ),
//                         label: Text(
//                           product['isAdded'] ? "Added" : "Add",
//                           style: TextStyle(
//                             color: product['isAdded']
//                                 ? Colors.white
//                                 : Colors.orange,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:medora/Models/Articles_model.dart';
import 'package:medora/Pages/ArticleDetailsPage.dart';
import 'package:medora/Pages/ChatGif.dart';
import 'package:medora/Pages/Show_Articles.dart';

class HomeContentPage extends StatefulWidget {
  const HomeContentPage({super.key});

  @override
  State<HomeContentPage> createState() => _HomeContentPageState();
}

class _HomeContentPageState extends State<HomeContentPage> {
  final int _bottomNavIndex = 0;

  final Map<String, String> categoryImages = {
    'Medical Devices': 'assets/images/22.png',
    'Surgical Supplies': 'assets/images/11.png',
    'Home Care': 'assets/images/1444.jpg',
  };

  final List<Map<String, dynamic>> topDeals = [
    {
      "image": "assets/images/88.png",
      "title": "Biological Microscope",
      "subtitle": "Lab LED Microscope 100...",
      "price": "472",
      "oldPrice": null,
      "discount": null,
      "rating": "5",
      "isFavorite": false,
      "isAdded": false,
    },
    {
      "image": "assets/images/77.png",
      "title": "Vaunn Exerciser",
      "subtitle": "Medical Pedal Exerciser",
      "price": "1000",
      "oldPrice": "2000",
      "discount": "50%",
      "rating": "3.5",
      "isFavorite": false,
      "isAdded": false,
    },
    {
      "image": "assets/images/99.png",
      "title": "YXW Adjustable",
      "subtitle": "Underarm Crutches, Ary... ",
      "price": "120",
      "oldPrice": "200",
      "discount": "40%",
      "rating": "4",
      "isFavorite": false,
      "isAdded": false,
    },
    {
      "image": "assets/images/100.png",
      "title": "Mania Tooth",
      "subtitle": "Repair Kit, Moldable Fake..",
      "price": "4000",
      "oldPrice": "5000",
      "discount": "20%",
      "rating": "4.5",
      "isFavorite": false,
      "isAdded": false,
    },
    {
      "image": "assets/images/66.png",
      "title": "Beurer BM27",
      "subtitle": "Blood Pressure Monit...",
      "price": "650",
      "oldPrice": "800",
      "discount": "18%",
      "rating": "4.8",
      "isFavorite": false,
      "isAdded": false,
    },
    {
      "image": "assets/images/image1 (2).png",
      "title": "medical infrared",
      "subtitle": "forehead thermomter",
      "price": "320",
      "oldPrice": "450",
      "discount": "28%",
      "rating": "4.3",
      "isFavorite": false,
      "isAdded": false,
    },
  ];

  final List<ArticleModel> allArticles = [
    ArticleModel(
      title: "The Importance of Regular Health Checkups",
      quote: "Early detection can save lives.",
      imagePath: "assets/images/article 1.jpg",
      fullArticle:
          "Many people only visit the doctor when they are feeling unwell...",
    ),
    ArticleModel(
      title: "How Sleep Affects Your Health",
      quote: "Getting enough quality sleep is crucial for your overall health.",
      imagePath: "assets/images/article 3.jpg",
      fullArticle:
          "Getting enough quality sleep is crucial for your overall health...",
    ),
    ArticleModel(
      title: "Nutrition Tips for a Healthy Life",
      quote: "Eat better, feel better!",
      imagePath: "assets/images/article 2.jpg",
      fullArticle: "Good nutrition is one of the keys to a healthy life...",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List<ArticleModel> similarArticles = allArticles.take(3).toList();

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTopBar(),
                _buildSearchBar(),
                _buildBanner(),
                const SizedBox(height: 35),
                _buildSectionTitle("New Arrival"),
                const SizedBox(height: 20),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryImages.length,
                    padding: const EdgeInsets.only(left: 20),
                    itemBuilder: (context, index) {
                      String categoryName = categoryImages.keys.elementAt(
                        index,
                      );
                      return _buildProductCard(categoryName);
                    },
                  ),
                ),
                const SizedBox(height: 20),
                _buildSectionTitle("Top Deals"),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.builder(
                    itemCount: topDeals.length,
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
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Medical Articles',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ShowArticles(),
                            ),
                          );
                        },
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 100,
                  child: PageView.builder(
                    itemCount: similarArticles.length,
                    controller: PageController(viewportFraction: 0.9),
                    itemBuilder: (context, index) {
                      final similarArticle = similarArticles[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ArticleDetailsPage(article: similarArticle),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                                child: Image.asset(
                                  similarArticle.imagePath,
                                  width: 100,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 8,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        similarArticle.title,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodyLarge,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        similarArticle.quote,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          top: BorderSide(color: Theme.of(context).dividerColor),
          bottom: BorderSide(color: Theme.of(context).dividerColor),
        ),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 13,
            backgroundImage: AssetImage(
              'assets/images/person-icon-outline-2.jpg',
            ),
          ),
          const SizedBox(width: 16),
          Text('Hi, Ahmad', style: Theme.of(context).textTheme.bodyMedium),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatPage()),
              );
            },
            child: Image.asset(
              'assets/images/arcticons_poe-ai-chat.png',
              height: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Theme.of(context).dividerColor),
        ),
        child: const Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search any Product..",
                  border: InputBorder.none,
                ),
              ),
            ),
            Icon(Icons.mic_none_outlined),
          ],
        ),
      ),
    );
  }

  Widget _buildBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Image.asset(
        'assets/images/slider.png',
        height: 190,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          Text(
            "View all",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(String title) {
    String imagePath = categoryImages[title] ?? '';

    return Container(
      width: 195,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
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
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
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
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Theme.of(context).dividerColor),
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
                    color: Theme.of(context).colorScheme.primary,
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
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                product['subtitle'],
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    "EGP ${product['price']}",
                    style: Theme.of(context).textTheme.bodyMedium,
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
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
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
                    Icon(
                      Icons.star,
                      color: Theme.of(context).colorScheme.primary,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(product['rating']),
                    const Spacer(flex: 2),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: product['isAdded']
                              ? Theme.of(context).colorScheme.primary
                              : Colors.grey.shade100,
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
                              : Theme.of(context).colorScheme.primary,
                          size: 18,
                        ),
                        label: Text(
                          product['isAdded'] ? "Added" : "Add",
                          style: TextStyle(
                            color: product['isAdded']
                                ? Colors.white
                                : Theme.of(context).colorScheme.primary,
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
