// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Order extends StatelessWidget {
//   const Order({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffF5F3F3),
//       appBar: AppBar(
//         title: Text(
//           'Order  #456765',
//           style: GoogleFonts.roboto(
//             textStyle: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         backgroundColor: const Color(0xffEFF1F1),
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios, size: 22),
//           onPressed: () {},
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 15.0, top: 25),
//             child: Row(
//               children: [
//                 Container(
//                   width: 25,
//                   height: 25,
//                   decoration: BoxDecoration(
//                     color: Colors.grey.shade400,
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Icon(Icons.check, color: Colors.white, size: 14),
//                 ),
//                 const SizedBox(width: 10),
//                 Text(
//                   'Delivered',
//                   style: TextStyle(
//                     color: Colors.grey.shade400,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 const SizedBox(width: 175),
//                 Text(
//                   '28 May',
//                   style: TextStyle(
//                     color: Colors.grey.shade400,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 15.0, top: 30),
//             child: Row(
//               children: [
//                 Container(
//                   width: 25,
//                   height: 25,
//                   decoration: const BoxDecoration(
//                     color: Color.fromARGB(255, 129, 194, 208),
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Icon(Icons.check, color: Colors.white, size: 14),
//                 ),
//                 const SizedBox(width: 10),
//                 const Text(
//                   'Shipped',
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 const SizedBox(width: 185),
//                 const Text(
//                   '28 May',
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 15.0, top: 30),
//             child: Row(
//               children: [
//                 Container(
//                   width: 25,
//                   height: 25,
//                   decoration: const BoxDecoration(
//                     color: Color.fromARGB(255, 129, 194, 208),
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Icon(Icons.check, color: Colors.white, size: 14),
//                 ),
//                 const SizedBox(width: 10),
//                 const Text(
//                   'Order Confirmed ',
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 const SizedBox(width: 110),
//                 const Text(
//                   '28 May',
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 15.0, top: 30),
//             child: Row(
//               children: [
//                 Container(
//                   width: 25,
//                   height: 25,
//                   decoration: const BoxDecoration(
//                     color: Color.fromARGB(255, 129, 194, 208),
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Icon(Icons.check, color: Colors.white, size: 14),
//                 ),
//                 const SizedBox(width: 10),
//                 const Text(
//                   'Order Placed',
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 const SizedBox(width: 145),
//                 const Text(
//                   '28 May',
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 45.0, left: 22),
//             child: Text(
//               'Order Items',
//               style: GoogleFonts.roboto(
//                 fontSize: 22,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 15.0, top: 30),
//             child: Row(
//               children: [
//                 Image.asset('assets/images/Frame 67.png'),
//                 const SizedBox(width: 10),
//                 const Text(
//                   '4 Items',
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontSize: 18,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 const SizedBox(width: 170),
//                 const Text(
//                   'View All',
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 129, 194, 208),
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 45.0, left: 22),
//             child: Text(
//               'Shipping details',
//               style: GoogleFonts.roboto(
//                 fontSize: 22,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 10.0, left: 22),
//             child: Text(
//               'Street 15, Maadi, Cairo, Egypt',
//               style: GoogleFonts.roboto(
//                 fontSize: 16,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w300,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 10.0, left: 22),
//             child: Text(
//               '+20 102-224-7890',
//               style: GoogleFonts.roboto(
//                 fontSize: 16,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w300,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
    final secondaryTextColor =
        Theme.of(context).textTheme.bodyMedium?.color ?? Colors.grey;
    final bgColor = Theme.of(context).scaffoldBackgroundColor;
    final cardColor = Theme.of(context).cardColor;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          'Order  #456765',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor:
            Theme.of(context).appBarTheme.backgroundColor ??
            Theme.of(context).primaryColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 22),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildStatusRow(
            context,
            'Delivered',
            '28 May',
            isDone: true,
            isFaded: true,
          ),
          _buildStatusRow(context, 'Shipped', '28 May'),
          _buildStatusRow(context, 'Order Confirmed', '28 May'),
          _buildStatusRow(context, 'Order Placed', '28 May'),
          const SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              'Order Items',
              style: GoogleFonts.roboto(
                fontSize: 22,
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 30),
            child: Row(
              children: [
                Image.asset('assets/images/Frame 67.png'),
                const SizedBox(width: 10),
                Text(
                  '4 Items',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: textColor,
                  ),
                ),
                const Spacer(),
                Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF81C2D0),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              'Shipping details',
              style: GoogleFonts.roboto(
                fontSize: 22,
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 22),
            child: Text(
              'Street 15, Maadi, Cairo, Egypt',
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: secondaryTextColor,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 22),
            child: Text(
              '+20 102-224-7890',
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: secondaryTextColor,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusRow(
    BuildContext context,
    String label,
    String date, {
    bool isDone = true,
    bool isFaded = false,
  }) {
    final textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
    final fadedColor = Theme.of(context).disabledColor;

    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 25),
      child: Row(
        children: [
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: isFaded
                  ? fadedColor
                  : const Color.fromARGB(255, 129, 194, 208),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.check, color: Colors.white, size: 14),
          ),
          const SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(
              color: isFaded ? fadedColor : textColor,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          Text(
            date,
            style: TextStyle(
              color: isFaded ? fadedColor : textColor,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
