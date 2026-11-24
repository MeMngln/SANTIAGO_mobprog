import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widgets/custom_text.dart';
import 'newsfeed_screen.dart';
import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  // Enhancement 2: one AppBar title per tab.
  static const List<String> _titles = [appName, 'Notifications', 'Profile'];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isHomeTab = _selectedIndex == 0;

    return Scaffold(
      appBar: AppBar(
        shadowColor: fbTextColorWhite,
        elevation: 2,
        title: CustomText(
          text: _titles[_selectedIndex], // Enhancement 2: dynamic title
          fontSize: ScreenUtil().setSp(isHomeTab ? 25 : 22),
          color: isHomeTab ? fbPrimary : Colors.black,
          fontFamily: 'Klavika',
          fontWeight: FontWeight.w700,
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
        children: const <Widget>[
          NewsfeedScreen(),
          NotificationScreen(),
          // Placeholder page for the Profile tab.
          Center(
            child: CustomText(
              text: 'Profile',
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onTappedBar,
        // Enhancement 3: more BottomNavigationBarItems.
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: fbPrimary,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
