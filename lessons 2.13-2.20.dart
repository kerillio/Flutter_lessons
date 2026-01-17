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
      home: HomePageStateless(title: 'Stateful page'),
    );
  }
}

class HomePageStateless extends StatelessWidget {
  final String title;
  int _counter = 0;
  int _decrementCount = 0;
  int _incrementCount = 0;

  HomePageStateless({required this.title, Key? key}) : super(key: key);

  void _incrementCounter() {
    _incrementCount += 1;
    _counter += 1;
    print('new value: $_counter');
    print('increment pressed $_incrementCount times');
  }

  void _decrementCounter() {
    _decrementCount += 1;
    if (_counter >= 0) { _counter -=1;}
    print('new value: $_counter');
    print('decrement pressed $_decrementCount times');
  }

  @override
  Widget build(BuildContext context) {
    print('build() method called');
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
                  .headlineLarge
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        child: const Icon(Icons.remove),
      ),*/
    );
  }
}