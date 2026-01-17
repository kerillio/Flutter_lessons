import 'package:flutter/material.dart';

void main() {
  runApp(const SurfApp());
}

class SurfApp extends StatelessWidget {
  const SurfApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageStateful(title: 'Stateful page'),
    );
  }
}

class HomePageStateful extends StatefulWidget {
  final String title;

  const HomePageStateful({required this.title, Key? key}) : super(key: key);

  @override
  State<HomePageStateful> createState() => _HomePageStatefulState();
}

class _HomePageStatefulState extends State<HomePageStateful> {
  int _counter = 0;
  int _incCounter = 0;
  int _decCounter = 0;

  void _incrementCounter() {
    setState(() {
      _incCounter++;
      _counter++;
    });
    print('new value: $_counter');
  }

  void _decrementCounter() {
      setState(() {
        _decCounter++;
        _counter>0 ? _counter--: '';
      });
      print('new value: $_counter');
  }

  @override
  Widget build(BuildContext context) {
    print('build() method called');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineLarge,
            ),
          ],
        ),
      ),
      floatingActionButton:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text('Pushed $_incCounter times'),
              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text('Pushed $_decCounter times'),
              FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
              ],
            )

          ],
        ),
    );
  }
}