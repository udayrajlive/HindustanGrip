import 'package:newsapp/model/categoryModel.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> category = <CategoryModel>[];
  CategoryModel categoryModel =new CategoryModel();
  //1
  categoryModel.categoryName ="Business";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1491336477066-31156b5e4f35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();
//2
//   categoryModel =new CategoryModel();
  categoryModel.categoryName ="Entertainment";
  categoryModel.imageUrl= "https://images.unsplash.com/photo-1608170825938-a8ea0305d46c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=725&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  //3
  // categoryModel =new CategoryModel();
  categoryModel.categoryName ="General";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1501504905252-473c47e087f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();
//4
//   categoryModel =new CategoryModel();
  categoryModel.categoryName ="Health";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1464226184884-fa280b87c399?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  category.add(categoryModel);
  categoryModel = new CategoryModel();
//5
  categoryModel =new CategoryModel();
  categoryModel.categoryName ="Sports";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1517649763962-0c623066013b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  category.add(categoryModel);
  // categoryModel = new CategoryModel();
//6
  categoryModel =new CategoryModel();
  categoryModel.categoryName ="Technology";
  categoryModel.imageUrl="https://images.unsplash.com/photo-1485827404703-89b55fcc595e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  category.add(categoryModel);
  // categoryModel = new CategoryModel();

  return category;
}

