import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Screen')),
      body: const Center(
        child: Text('This is the main screen'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 15,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(),
        unselectedLabelStyle: TextStyle(),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.all(3),
              child: SvgPicture.asset("assets/axis/SelectedWatchlist.svg"),
            ),
            icon: Padding(
              padding: const EdgeInsets.all(3),
              child: SvgPicture.asset("assets/axis/UnselectedWatchlist.svg"),
            ),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.all(3),
              child: SvgPicture.asset("assets/axis/SelectedOrder.svg"),
            ),
            icon: Padding(
              padding: const EdgeInsets.all(3),
              child: SvgPicture.asset("assets/axis/UnselectedOrder.svg"),
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.all(3),
              child: SvgPicture.asset("assets/axis/SelectedPortfolio.svg"),
            ),
            icon: Padding(
              padding: const EdgeInsets.all(3),
              child: SvgPicture.asset("assets/axis/UnselectedPortfolio.svg"),
            ),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.all(3),
                child: SvgPicture.asset("assets/axis/SelectedTools.svg"),
              ),
              icon: Padding(
                padding: const EdgeInsets.all(3),
                child: SvgPicture.asset("assets/axis/UnselectedTools.svg"),
              ),
              label: 'Tools'),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.all(3),
              child: SvgPicture.asset("assets/axis/SelectedMore.svg"),
            ),
            icon: Padding(
              padding: const EdgeInsets.all(3),
              child: SvgPicture.asset("assets/axis/UnselectedMore.svg"),
            ),
            label: 'More',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {

        },
      ),
    );
  }
}