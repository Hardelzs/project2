import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  // methods
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // ui
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // message
              Text("You did pushed the damn button this many time"),
              
              // counter value 
              Text(
                _counter.toString(),
                style: TextStyle(
                  fontSize: 40,
                ),
                ),
      
                // button
                ElevatedButton(onPressed: _incrementCounter, child: Text("increment!"))
            ],
          ),
        ),
      ),
    );
  }
}
