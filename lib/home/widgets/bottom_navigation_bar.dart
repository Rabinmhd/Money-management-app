import 'package:flutter/material.dart';
import 'package:personal_money_management_app/home/home_screen.dart';

class BottomNavigationBarHome extends StatelessWidget {
  const BottomNavigationBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomeScreen.selectedIndexNotifier,
      builder: (BuildContext ctx,int updatedIndex,Widget? _){
        return  BottomNavigationBar(
        onTap: (newIndex) {
          HomeScreen.selectedIndexNotifier.value = newIndex;
        },
        currentIndex: updatedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Transactions'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories')
        ],
      );
      },
      
    );
  }
}
