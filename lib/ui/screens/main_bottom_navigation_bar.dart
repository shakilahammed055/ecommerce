import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({super.key});

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.PrimaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index){
          _selectedIndex = index;
          setState(() {

          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "categories"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "cart"),
          BottomNavigationBarItem(icon: Icon(Icons.gif_box),label: "wish"),
        ],
      ),
    );
  }
}
