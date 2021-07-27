// import 'dart:ffi';

import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  Add({Key? key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  var adds = 0;

  void _add() {
    setState(() {
      adds++;
    });
  }

  void _sub() {
    setState(() {
      adds--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text("You have clicked Add this many times => $adds"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: _add,
                child: Icon(Icons.add),
              ),
              SizedBox(width: 15,),
              FloatingActionButton(
                onPressed: _sub,
                child: Icon(Icons.remove),
              ),
              SizedBox(width: 15,),
            ],
          ),
        ],
      ),
    );
  }
}
