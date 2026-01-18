import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttons Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() =>
      _HomePage();
}

class _HomePage extends State<HomePage> with TickerProviderStateMixin{

    late final _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this);
    late final Animation<double> animation = CurvedAnimation(
        parent: _controller,
        curve: Easing.standard);



  bool selected = false;
  double topPos = 10.0;

  @override
  Widget build(BuildContext context) {
    print('build() method called');
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture demo'),
      ),
      body: Center(
        child: Positioned(
            top: topPos,
            child: Stack(
            children: [
              RotationTransition(
                turns: animation,
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: selected ? 100 : 200,
                  height: selected ? 200 : 100,
                  child: Positioned.fill(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                      onLongPress: () {
                        _controller.repeat(count: 1);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 4),
                        color: selected ? Colors.amber : Colors.deepOrange,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}