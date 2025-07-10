//

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medora/Pages/Settings.dart';
import 'package:medora/Pages/home.dart';
import 'package:medora/Pages/no_NotificationsPage.dart';
import 'package:medora/Pages/favourite_screen.dart';
import 'package:medora/Pages/show_orders.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _imageFile;

  Future<void> _changePhoto() async {
    final picker = ImagePicker();
    final pickedFile = await showModalBottomSheet<XFile?>(
      context: context,
      builder: (context) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Pick from gallery'),
              onTap: () async {
                try {
                  final file = await picker.pickImage(
                    source: ImageSource.gallery,
                  );
                  if (context.mounted) Navigator.pop(context, file);
                } catch (_) {
                  if (context.mounted) Navigator.pop(context);
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Take a photo'),
              onTap: () async {
                try {
                  final file = await picker.pickImage(
                    source: ImageSource.camera,
                  );
                  if (context.mounted) Navigator.pop(context, file);
                } catch (_) {
                  if (context.mounted) Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );

    if (pickedFile != null && mounted) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.textTheme.bodyLarge?.color;
    final borderColor = const Color.fromARGB(255, 206, 206, 206);
    const tileHeight = 60.0;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: theme.iconTheme.color),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor:
            theme.appBarTheme.backgroundColor ?? theme.scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundColor: const Color(0xff6FC0D3),
                  child: CircleAvatar(
                    radius: 52,
                    backgroundImage: _imageFile != null
                        ? FileImage(_imageFile!)
                        : const AssetImage(
                                'assets/images/person-icon-outline-2.jpg',
                              )
                              as ImageProvider,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 10,
                  child: GestureDetector(
                    onTap: _changePhoto,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xff6FC0D3),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "Ahmad",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: textColor,
              ),
            ),
            const SizedBox(height: 30),
            _buildStatsRow(theme),
            const SizedBox(height: 25),
            _buildMenuItem(Icons.favorite, 'Favorites', () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavouriteScreen(),
                ),
              );
            }, theme),
            _buildMenuItem(Icons.notifications, 'Notifications', () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const No_Notificationspage(),
                ),
              );
            }, theme),
            _buildMenuItem(Icons.view_list, 'Orders', () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ShowOrders()),
              );
            }, theme),
            _buildMenuItem(Icons.settings, 'Settings', () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            }, theme),
            _buildMenuItem(Icons.help_center, 'Help Center', () {}, theme),
            _buildMenuItem(Icons.logout, 'Logout', () {}, theme),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildStatsRow(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildStatBox('5', 'Orders', theme),
          _buildStatBox('5', 'Canceled', theme),
          _buildStatBox('8', 'Pending', theme),
        ],
      ),
    );
  }

  Widget _buildStatBox(String value, String label, ThemeData theme) {
    return Container(
      height: 85,
      width: 85,
      decoration: BoxDecoration(
        color: theme.cardColor,
        border: Border.all(color: const Color.fromARGB(255, 206, 206, 206)),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              color: theme.textTheme.bodyLarge?.color,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(fontSize: 12, color: Color(0xffA7A7A7)),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
    IconData icon,
    String label,
    VoidCallback onTap,
    ThemeData theme,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: theme.cardColor,
            border: Border.all(color: const Color.fromARGB(255, 206, 206, 206)),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Icon(icon, color: theme.iconTheme.color),
                const SizedBox(width: 25),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 20,
                    color: theme.textTheme.bodyLarge?.color,
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
