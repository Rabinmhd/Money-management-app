import 'package:hive_flutter/adapters.dart';
import 'package:personal_money_management_app/models/categories/category.dart';

abstract class CategoriesDbFunction{
Future<void> insertCategory(CategoryModel value);
Future<List<CategoryModel>> getCategory();
}

class CategoryDB implements CategoriesDbFunction{
  @override
  Future<void> insertCategory(CategoryModel value) async {
    
    final _categoryDB = await Hive.openBox<CategoryModel>('category-db');
     await _categoryDB.add(value);
  }
  
  @override
  Future<List<CategoryModel>> getCategory() async{
    final _categoryDB = await Hive.openBox<CategoryModel>('category-db');
    return _categoryDB.values.toList();
    

  }  

}