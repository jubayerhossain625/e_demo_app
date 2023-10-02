import 'package:e_demo_app/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import '../../myCart/views/my_cart_view.dart';
import 'body_home_view.dart';


class HomeView extends StatefulWidget {
   const HomeView({Key? key}) : super(key: key);

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        color:Colors.white70,
        child: _selectedIndex ==0 ? const BodyHomeView(): _selectedIndex ==3 ? const ProfileView():const MyCartView(),

      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 10,left: 15,right: 15),
        decoration: const BoxDecoration(
          color: Colors.white70,
        ),
        child: GNav(
          // rippleColor: Colors.grey[300]!,
          // hoverColor: Colors.grey[100]!,
          gap: 8,
          activeColor: Colors.red,
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          duration: const Duration(milliseconds: 400),
          tabBackgroundColor: Colors.grey[200]!,
          color: Colors.black,
          tabs:  const [
            GButton(
              icon: LineIcons.home,
              text: 'Home',
            ),
            GButton(
              icon:Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: LineIcons.shoppingCart,
              text: 'My Card',
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Profile',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
          },
        ),
      ),
    );
  }
}
