import 'package:bigbacket/main.dart';
import 'package:bigbacket/screen/items_display.dart';
import 'package:flutter/material.dart';
import 'package:bigbacket/screen/header_parts.dart';
import 'package:bigbacket/utils/colors.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // For BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          selectedItemColor: primaryColors,
          unselectedItemColor: Colors.green[200],
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                ),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: 'Cart'),

          ]),
      body: ListView(
        children: const [
          SizedBox(
            height: 15,
          ),
          // For header parts
          HeaderParts(),
          // For Body parts
          ItemsDisplay(),
        ],
      ),
    );
  }
}