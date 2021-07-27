import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int settings = 0;

  void _add() {
    setState(() {
      settings++;
    });
  }

  void _minus() {
    setState(() {
      settings--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Setting"),
        ),
        body: Center(
          child: Column(
            children: [
              Center(
                child: Text(
                    "You have clicked Settings this many Times => $settings"),
              ),
              Row(
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: _add,
                  ),
                  FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: _minus,
              ),

                ],
              ),
              
            ],
          ),
        ));
  }
}
