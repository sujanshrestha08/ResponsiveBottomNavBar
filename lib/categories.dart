import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int categories = 0;

  void _increment() {
    setState(() {
      categories++;
    });
  }

  void _decrement() {
    setState(() {
      categories--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Categories"),
        ),
        body: Center(
          child: Column(
            children: [
              Center(
                child: Text(
                    "You have clicked categories this many times -> $categories"),
              ),
              Row(
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: _increment,
                  ),
                  FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: _decrement,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
