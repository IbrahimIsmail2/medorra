//

import 'package:flutter/material.dart';
import 'package:medora/Pages/ChattingPage.dart';
import 'package:medora/Pages/home.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
    final buttonColor = const Color(0xff6FC0D3);

    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF121212) : null,
      body: Container(
        decoration: isDark
            ? null
            : const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 255, 255),
                    Color(0xffE9F6F9),
                    Color(0xffD6EFF5),
                    Color(0xffC8EAF2),
                    Color.fromARGB(255, 131, 201, 217),
                    Color.fromARGB(255, 153, 209, 222),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 55.0, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: isDark ? Colors.white : buttonColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 45),
                Image.asset('assets/images/gif.gif', width: 350, height: 350),
                const SizedBox(height: 5),
                Text(
                  'Welcome to your Medhelper',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'Ask any thing ,Get your answer',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: isDark
                        ? Colors.grey[400]
                        : const Color.fromARGB(255, 138, 138, 138),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 75,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Chattingpage()),
                    );
                  },
                  child: const Text(
                    'New Chat',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
