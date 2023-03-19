import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:personal_money_management_app/database/category/category_db.dart';

import 'income_categorylist.dart';

class ScreenCategories extends StatefulWidget {
  const ScreenCategories({super.key});

  @override
  State<ScreenCategories> createState() => _ScreenCategoriesState();
}

class _ScreenCategoriesState extends State<ScreenCategories>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    CategoryDB().getCategory().then((value) {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.brown,
          controller: _tabController,
          tabs: const [
            Tab(
              text: ' Income ',
            ),
            Tab(
              text: 'Expense',
            ),
          ],
        ),
        Expanded(
          child: TabBarView(controller: _tabController, children: const [
            IncomeCategoryList(),
            Text('tab 2'),
          ]),
        )
      ]),
    );
  }
}
