import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// myapp is the root of the widget tree

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

}

// stateless widgets will directly implement the build method
// stateful widgets will implement the createState method


// the screen is stateles or stateful

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // whole screen

    // app bar is the top part of your screen
      appBar: AppBar(
        title: const Text("My App"),
        backgroundColor: Colors.red,
      ),

      // body is the main part of your screen

      // center is a normal widget
      // column is a layout widget
      // text is a normal widget

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          // it places the widget horizontally
          // it places the widget vertically --> column

          children: <Widget>[
            Container(
              color: Colors.black,
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration:  const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all( Radius.circular(10))

                ),
                padding: const EdgeInsets.all(20.0),
                margin:  const EdgeInsets.all(20) ,
                child: const Text(
                  "ITSA, GCOEA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,

                  ),
                  
                  ),
              )
            )
          ],
        ),
      ),
      
      // every widget has its own properties
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
     
    );
  }
}
