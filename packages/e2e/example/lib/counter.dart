import 'package:flutter/material.dart';

void startApp() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Counter App', home: MyHomePage(title: 'Counter App Home Page'));
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text('You have pushed the button this many times:'),
              Text('$_counter',
                  key: Key('counter'),
                  style: Theme.of(context).textTheme.headline4),
            ])),
        floatingActionButton: FloatingActionButton(
            key: Key('increment'),
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add)));
  }

  void _incrementCounter() => setState(() => _counter++);
}
