import 'package:flutter/material.dart';
import 'package:sneakers_shop/pages/shoppage.dart';

import '../helpers/navbar.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                "lib/images/nike.png",
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Divider(
                color: Colors.grey[800],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  "Logout ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar:
          NavBar(onTabChange: (index) => navigateBottomBar(index)),
      body: _pages[_selectedIndex],
    );
  }
}
