import 'package:flutter/material.dart';

class Charts extends StatefulWidget {
  Charts({Key? key}) : super(key: key);

  @override
  _ChartsState createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {
  var charts = 0;

  void _add() {
    setState(() {
      charts++;
    });
  }

  void _minus() {
    setState(() {
      charts--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Charts"),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Text("You have clicked Charts this many times -> $charts"),
            ),
            Row(
              children: [
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: _add,
                ),
                FloatingActionButton(
              onPressed: _minus,
              child: Icon(Icons.remove),
            ),

              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
