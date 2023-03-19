import 'package:flutter/material.dart';
import 'package:personal_money_management_app/home/widgets/bottom_navigation_bar.dart';
import 'package:personal_money_management_app/screens/categoris/category_add_alert.dart';

import '../screens/categoris/screen_categories.dart';
import '../screens/transactions/screen_transaction.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final screens = [const ScreenTransaction(), const ScreenCategories()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Money management App'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedIndexNotifier.value == 0) {
             // print('screen transaction');
            } else {
              showAlertDialogue(context);
             // CategoryDB().insertCategory(value);
            }
          },
          backgroundColor: const Color.fromARGB(208, 90, 74, 27),
          child: const Icon(Icons.add),
          
        ),
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: selectedIndexNotifier,
            builder: (BuildContext ctx, int updatedValue, Widget? _) {
              return screens[updatedValue];
            },
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarHome());
  }
}
