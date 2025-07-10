// import 'package:flutter/material.dart';
// import 'package:medora/Pages/CheckOut.dart';

// class Cartpage extends StatefulWidget {
//   const Cartpage({super.key});

//   @override
//   State<Cartpage> createState() => _CartpageState();
// }

// class _CartpageState extends State<Cartpage> {
//   int quantity = 1;

//   void increment() {
//     setState(() {
//       quantity++;
//     });
//   }

//   void decrement() {
//     if (quantity > 1) {
//       setState(() {
//         quantity--;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Cart',
//           style: TextStyle(fontWeight: FontWeight.w400),
//         ),
//         centerTitle: true,
//         backgroundColor: const Color(0xffEFF1F1),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios),
//           onPressed: () {},
//         ),
//       ),
//       backgroundColor: const Color(0xffF5F3F3),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 20.0),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Top banner button
//               Center(
//                 child: SizedBox(
//                   width: 300,
//                   height: 40,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFFFAC32E),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: const Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           "You have 2 items in your cart ",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         SizedBox(width: 8),
//                         Icon(Icons.lock_outline, color: Colors.black, size: 20),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 20),

//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Container(
//                   height: 150,
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(
//                       color: const Color(0xffCFE5EB),
//                       width: 1,
//                     ),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 100,
//                         height: 110,
//                         decoration: BoxDecoration(
//                           color: const Color(0xffD9D9D9),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       const SizedBox(width: 12),
//                       const Expanded(
//                         child: Column(
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(right: 30.0, top: 10),
//                               child: Text(
//                                 'Pets Republic',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 65),
//                             Padding(
//                               padding: EdgeInsets.only(right: 60.0),
//                               child: Text.rich(
//                                 TextSpan(
//                                   text: 'EGP ',
//                                   style: TextStyle(color: Colors.grey),
//                                   children: [
//                                     TextSpan(
//                                       text: '145',
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Column(
//                         children: [
//                           const Padding(
//                             padding: EdgeInsets.only(left: 55.0),
//                             child: Icon(
//                               Icons.delete_outline,
//                               color: Color(0xffF29B9B),
//                               size: 30,
//                             ),
//                           ),
//                           const SizedBox(height: 55),
//                           Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: const Color(0xffCFE5EB),
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.transparent,
//                             ),
//                             child: Row(
//                               children: [
//                                 _qtyButton(Icons.remove, onTap: decrement),
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                     horizontal: 6,
//                                   ),
//                                   child: Text(
//                                     quantity.toString(),
//                                     style: const TextStyle(
//                                       fontSize: 16,
//                                       color: Color.fromARGB(255, 155, 189, 197),
//                                     ),
//                                   ),
//                                 ),
//                                 _qtyButton(Icons.add, onTap: increment),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),

//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Container(
//                   height: 150,
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(
//                       color: const Color(0xffCFE5EB),
//                       width: 1,
//                     ),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 100,
//                         height: 110,
//                         decoration: BoxDecoration(
//                           color: const Color(0xffD9D9D9),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       const SizedBox(width: 12),
//                       const Expanded(
//                         child: Column(
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(right: 30.0, top: 10),
//                               child: Text(
//                                 'Pets Republic',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 65),
//                             Padding(
//                               padding: EdgeInsets.only(right: 60.0),
//                               child: Text.rich(
//                                 TextSpan(
//                                   text: 'EGP ',
//                                   style: TextStyle(color: Colors.grey),
//                                   children: [
//                                     TextSpan(
//                                       text: '145',
//                                       style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 16,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Column(
//                         children: [
//                           const Padding(
//                             padding: EdgeInsets.only(left: 55.0),
//                             child: Icon(
//                               Icons.delete_outline,
//                               color: Color(0xffF29B9B),
//                               size: 30,
//                             ),
//                           ),
//                           const SizedBox(height: 55),
//                           Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: const Color(0xffCFE5EB),
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.transparent,
//                             ),
//                             child: Row(
//                               children: [
//                                 _qtyButton(Icons.remove, onTap: decrement),
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                     horizontal: 6,
//                                   ),
//                                   child: Text(
//                                     quantity.toString(),
//                                     style: const TextStyle(
//                                       fontSize: 16,
//                                       color: Color(0xff6FC0D3),
//                                     ),
//                                   ),
//                                 ),
//                                 _qtyButton(Icons.add, onTap: increment),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 children: [
//                   const Expanded(
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 20.0),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: 'Coupon Code',
//                           filled: true,
//                           fillColor: Colors.white,
//                           contentPadding: EdgeInsets.symmetric(horizontal: 20),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(6),
//                               bottomLeft: Radius.circular(6),
//                             ),
//                             borderSide: BorderSide.none,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 48,
//                     child: Padding(
//                       padding: const EdgeInsets.only(right: 17.0),
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xff6FC0D3),
//                           shape: const RoundedRectangleBorder(
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(6),
//                               bottomRight: Radius.circular(6),
//                             ),
//                           ),
//                           elevation: 0,
//                         ),
//                         onPressed: () {},
//                         child: const Text(
//                           'Apply',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Padding(
//                 padding: const EdgeInsets.only(right: 17.0, left: 17),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   height: 180,
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(20.0),
//                         child: Row(
//                           children: [
//                             Text(
//                               'Items (2)',
//                               style: TextStyle(color: Colors.grey[500]),
//                             ),
//                             const SizedBox(width: 180),
//                             const Text(
//                               'EGP 598.86',
//                               style: TextStyle(
//                                 color: Color.fromARGB(255, 24, 24, 24),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20.0, right: 20),
//                         child: Row(
//                           children: [
//                             Text(
//                               'Shipping',
//                               style: TextStyle(color: Colors.grey[500]),
//                             ),
//                             const SizedBox(width: 198),
//                             const Text(
//                               'EGP 60',
//                               style: TextStyle(
//                                 color: Color.fromARGB(255, 24, 24, 24),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           left: 20.0,
//                           right: 20,
//                           top: 20,
//                         ),
//                         child: Row(
//                           children: [
//                             Text(
//                               'Import charges',
//                               style: TextStyle(color: Colors.grey[500]),
//                             ),
//                             const SizedBox(width: 150),
//                             const Text(
//                               'EGP 120',
//                               style: TextStyle(
//                                 color: Color.fromARGB(255, 24, 24, 24),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.only(left: 20.0, right: 20, top: 3),
//                         child: Text(
//                           '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
//                           style: TextStyle(
//                             color: Color.fromARGB(255, 184, 204, 209),
//                           ),
//                         ),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.only(left: 20.0, right: 20, top: 5),
//                         child: Row(
//                           children: [
//                             Text(
//                               'Total Price',
//                               style: TextStyle(
//                                 color: Color.fromARGB(255, 15, 15, 15),
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             SizedBox(width: 168),
//                             Text(
//                               'EGP 766.86',
//                               style: TextStyle(
//                                 color: Color(0xff6FC0D3),
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 0.0,
//                   horizontal: 20,
//                 ),
//                 child: Container(
//                   height: 75,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.all(Radius.circular(20)),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             const Text(
//                               'EGP',
//                               style: TextStyle(color: Colors.grey),
//                             ),
//                             const SizedBox(width: 8),
//                             const Text(
//                               '766.86',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             const SizedBox(width: 109),
//                             ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: const Color(0xFF6FC0D3),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(25),
//                                 ),
//                               ),
//                               onPressed: () {
//                                 Navigator.pushReplacement(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => const Checkout(),
//                                   ),
//                                 );
//                               },
//                               child: const Row(
//                                 children: [
//                                   Text(
//                                     'Check Out',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                   SizedBox(width: 5),
//                                   Icon(
//                                     Icons.arrow_circle_right,
//                                     color: Color.fromARGB(255, 255, 255, 255),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _qtyButton(IconData icon, {required VoidCallback onTap}) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: 35,
//         height: 35,
//         decoration: const BoxDecoration(
//           color: Color(0xff6FC0D3),
//           shape: BoxShape.circle,
//         ),
//         child: Icon(icon, size: 16, color: Colors.white),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:medora/Pages/CheckOut.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  int quantity = 1;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: theme.cardColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFAC32E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "You have 2 items in your cart ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.lock_outline, color: Colors.black, size: 20),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              buildCartItem(theme),
              const SizedBox(height: 20),
              buildCartItem(theme),
              const SizedBox(height: 20),
              buildCouponSection(theme),
              const SizedBox(height: 20),
              buildSummaryCard(theme),
              const SizedBox(height: 15),
              buildBottomCheckout(theme),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCartItem(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 150,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: theme.cardColor,
          border: Border.all(color: const Color(0xffCFE5EB), width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 110,
              decoration: BoxDecoration(
                color: const Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 30.0, top: 10),
                    child: Text(
                      'Pets Republic',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 65),
                  Padding(
                    padding: const EdgeInsets.only(right: 60.0),
                    child: Text.rich(
                      TextSpan(
                        text: 'EGP ',
                        style: TextStyle(color: theme.hintColor),
                        children: [
                          TextSpan(
                            text: '145',
                            style: TextStyle(
                              color: theme.textTheme.bodyLarge!.color,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 55.0),
                  child: Icon(
                    Icons.delete_outline,
                    color: Color(0xffF29B9B),
                    size: 30,
                  ),
                ),
                const SizedBox(height: 55),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffCFE5EB)),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                  ),
                  child: Row(
                    children: [
                      _qtyButton(Icons.remove, onTap: decrement),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Text(
                          quantity.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            color: theme.primaryColor,
                          ),
                        ),
                      ),
                      _qtyButton(Icons.add, onTap: increment),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCouponSection(ThemeData theme) {
    return Row(
      children: [
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Coupon Code',
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 48,
          child: Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6FC0D3),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                ),
                elevation: 0,
              ),
              onPressed: () {},
              child: const Text(
                'Apply',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSummaryCard(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Container(
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 180,
        child: Column(
          children: [
            buildSummaryRow('Items (2)', 'EGP 598.86', theme),
            buildSummaryRow('Shipping', 'EGP 60', theme),
            buildSummaryRow('Import charges', 'EGP 120', theme),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Color.fromARGB(255, 184, 204, 209)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Total Price',
                    style: TextStyle(
                      color: theme.textTheme.bodyLarge!.color,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'EGP 766.86',
                    style: TextStyle(
                      color: theme.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSummaryRow(String title, String value, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          Text(title, style: TextStyle(color: theme.hintColor)),
          const Spacer(),
          Text(
            value,
            style: TextStyle(color: theme.textTheme.bodyLarge!.color),
          ),
        ],
      ),
    );
  }

  Widget buildBottomCheckout(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Text('EGP', style: TextStyle(color: theme.hintColor)),
              const SizedBox(width: 8),
              Text(
                '766.86',
                style: TextStyle(
                  color: theme.textTheme.bodyLarge!.color,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Checkout()),
                  );
                },
                child: const Row(
                  children: [
                    Text(
                      'Check Out',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_circle_right, color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _qtyButton(IconData icon, {required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 35,
        height: 35,
        decoration: const BoxDecoration(
          color: Color(0xff6FC0D3),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 16, color: Colors.white),
      ),
    );
  }
}
