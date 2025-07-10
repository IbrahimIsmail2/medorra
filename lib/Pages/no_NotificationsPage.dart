import 'package:flutter/material.dart';
import 'package:medora/Pages/ProfilePage.dart';

class No_Notificationspage extends StatelessWidget {
  const No_Notificationspage({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor =
        Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
    final bgColor = Theme.of(context).scaffoldBackgroundColor;
    final appBarColor =
        Theme.of(context).appBarTheme.backgroundColor ??
        Theme.of(context).primaryColor;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: appBarColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 145.0),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/Illustration.png'),
              const SizedBox(height: 20),
              Text(
                'No Notifications',
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'You have no notifications at this time , thank you',
                style: TextStyle(
                  color: textColor.withOpacity(0.7),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
