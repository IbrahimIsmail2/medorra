//
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:medora/Pages/CartPage.dart';
import 'package:medora/Pages/HomeScreen.dart';
import 'package:medora/Pages/ProfilePage.dart';
import 'package:medora/Pages/ShowCategories.dart';
import 'package:medora/Pages/offersPage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _bottomNavIndex = 0;
  final PageController _pageController = PageController();
  final List<IconData> _iconList = [
    Icons.home,
    Icons.category,
    Icons.shopping_cart,
    Icons.person,
  ];

  final List<String> _iconLabels = ['Home', 'Categories', 'Cart', 'Profile'];

  final List<Widget> _pages = [
    const HomeContentPage(),
    const CategoriesScreen(),
    const Cartpage(),
    const ProfilePage(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = theme.scaffoldBackgroundColor;
    final cardColor = theme.cardColor;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      floatingActionButton: _buildFAB(cardColor),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: _iconList.length,
        tabBuilder: (index, isActive) {
          final color = isActive
              ? const Color.fromARGB(255, 148, 199, 210)
              : Colors.grey;

          return Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(_iconList[index], color: color),
                const SizedBox(height: 4),
                Text(
                  _iconLabels[index],
                  style: TextStyle(
                    color: color,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        backgroundColor: cardColor,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
          _pageController.jumpToPage(index);
        },
      ),
    );
  }

  Widget _buildFAB(Color borderColor) {
    return Container(
      width: 68,
      height: 68,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 6),
      ),
      child: FloatingActionButton(
        backgroundColor: const Color(0xffA0D3DF),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OffersScreen()),
          );
        },
        shape: const CircleBorder(),
        elevation: 4,
        child: const Icon(
          Icons.local_offer_outlined,
          color: Color.fromARGB(255, 123, 123, 123),
        ),
      ),
    );
  }
}
