import 'package:flutter/material.dart';
import 'package:flutter_travelling_app/Color/colors.dart';
import 'package:flutter_travelling_app/Widgets/destination_carousel.dart';
import 'package:flutter_travelling_app/Widgets/hostel_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking,
  ];

  Widget _buildIcons(int index) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          _selectedIndex = index;
        });
      }),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color:
                _selectedIndex == index ? accentColor : const Color(0XFFE7EBEE),
            borderRadius: BorderRadius.circular(30)),
        child: Icon(
          _icons[index],
          size: 25.0,
          color:
              _selectedIndex == index ? primaryColor : const Color(0XFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 120.0, top: 30),
            child: Text(
              'What you would like fo find?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
                _icons.asMap().entries.map((e) => _buildIcons(e.key)).toList(),
          ),
          const SizedBox(height: 20.0),
          const DestinationWidget(),
          const SizedBox(height: 20.0),
          const HostelCarouselWidget()
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30.0,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_pizza,
                size: 30.0,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15.0,
                backgroundImage: AssetImage(
                    'assets/images/depositphotos_226524070-stock-photo-shopping-cart-yellow-background.jpg'),
              ),
              label: '')
        ],
        currentIndex: _currentTab,
      ),
    );
  }
}
