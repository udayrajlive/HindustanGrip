import 'package:flutter/material.dart';
import 'package:newsapp/helper/data.dart';
import 'package:newsapp/model/categoryModel.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<CategoryModel> categories = <CategoryModel>[];



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories =getCategories();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientText(
              "Hindustan",
              style: TextStyle(
                fontSize: 20,
              ),
              colors: const [
                Colors.black,
                Colors.blue,
                Colors.cyan,
              ],
            ),
            Text("GRIP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.deepOrange,
                ))
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: ListView.builder(itemCount: categories.length,shrinkWrap: true,itemBuilder:(context,index){
                return CategoryTile(
                  imageUrl: categories[index].imageUrl,
                  categoryName: categories[index].categoryName,
                );
              }),

            )
          ],
        )
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
final imageUrl,categoryName;
  CategoryTile({this.imageUrl,this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.network(imageUrl,width: 120,height: 60,),

        ],
      ),
    );
  }
}
