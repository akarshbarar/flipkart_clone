import 'package:flutter/material.dart';

class AllCategories extends StatefulWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("All Categories"),
        actions: [
          Icon(Icons.search),
          Icon(Icons.mic),
          Icon(Icons.shopping_cart)
        ],
      ),
      body: GridView.builder(
          itemCount: 100,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (ctx, i) {
            return Container(
              child: Column(
                children: [FlutterLogo(), Text("Hii")],
              ),
            );
          }),
    ));
  }
}
