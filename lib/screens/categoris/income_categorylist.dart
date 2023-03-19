import 'package:flutter/material.dart';

class IncomeCategoryList extends StatelessWidget {
  const IncomeCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(itemBuilder: (ctx,value){
      return const Text('income category',style: TextStyle(fontSize: 20),);
    }, separatorBuilder: (ctx,value){
      return const Divider();
    }, itemCount: 10);
  }
}