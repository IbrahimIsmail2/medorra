//

import 'package:flutter/material.dart';
import 'package:medora/Pages/ProfilePage.dart';
import 'package:provider/provider.dart';
import 'package:medora/theme_provider.dart'; // لو اسم الباكيج medora

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool notificationsEnabled = false;

  Color get activeColor => const Color(0xFF6FC0D3);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDarkMode ? Colors.white : Colors.black;

    final bgColor = Theme.of(context).scaffoldBackgroundColor;
    final cardColor = Theme.of(context).cardColor;
    final appBarColor =
        Theme.of(context).appBarTheme.backgroundColor ??
        Theme.of(context).primaryColor;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          },
        ),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildToggleItem(
                context,
                icon: Icons.notifications_active,
                label: 'Notifications',
                value: notificationsEnabled,
                onChanged: (val) {
                  setState(() {
                    notificationsEnabled = val;
                  });
                },
              ),
              const SizedBox(height: 20),
              _buildToggleItem(
                context,
                icon: Icons.dark_mode,
                label: 'Dark Mode',
                value: themeProvider.themeMode == ThemeMode.dark,
                onChanged: (val) {
                  themeProvider.toggleTheme(val);
                },
              ),
              const SizedBox(height: 20),
              _buildSettingsItem(
                context,
                icon: Icons.lock,
                label: 'Reset Password',
                onTap: () {},
              ),
              const SizedBox(height: 20),
              _buildSettingsItem(
                context,
                icon: Icons.language,
                label: 'Language',
                onTap: () {},
              ),
              const SizedBox(height: 75),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: SizedBox(
                  width: 225,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: activeColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'SAVE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildToggleItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDarkMode ? Colors.white : Colors.black;
    final cardColor = Theme.of(context).cardColor;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: cardColor,
          border: Border.all(color: const Color.fromARGB(255, 206, 206, 206)),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Icon(icon, color: value ? activeColor : textColor),
              const SizedBox(width: 25),
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 20,
                    color: value ? activeColor : textColor,
                  ),
                ),
              ),
              Switch(
                value: value,
                onChanged: onChanged,
                activeColor: activeColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDarkMode ? Colors.white : Colors.black;
    final cardColor = Theme.of(context).cardColor;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: cardColor,
          border: Border.all(color: const Color.fromARGB(255, 206, 206, 206)),
          borderRadius: BorderRadius.circular(14),
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Icon(icon, color: textColor),
                const SizedBox(width: 25),
                Text(label, style: TextStyle(fontSize: 20, color: textColor)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
