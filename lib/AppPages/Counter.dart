import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  int nbr = 0;

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  void _increment() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(backgroundColor: Colors.black, title: Text('Counter')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                child: Text('click'),
                backgroundColor: Colors.black,
                onPressed: (){
                  setState(() {
                    widget.nbr++;
                  });
                },
              ),
              Padding(
                  padding: EdgeInsets.all(16.0), child: Text('${widget.nbr}'))
            ],
          ),
        ),
      ),
    );
  }
}
