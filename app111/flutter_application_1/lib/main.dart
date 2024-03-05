import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 82, 67, 216)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Икремент'),
    );
  }
}

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
      
      _counter++;
      
    });
    
  }
    void _incrementReduce() {
    setState(() {
      
      _counter--;
      
    });
    
  }

  void _incrementNull() {
    setState(() {
      
      _counter = 0;
      
    });
    
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Значение инкремента:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
  

    floatingActionButton: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(
        width: 130,
      
      ),
      FloatingActionButton(
        onPressed: _incrementCounter,
      backgroundColor: Color.fromARGB(255, 19, 214, 78),
        child: const Icon(
          Icons.add
        ),
      ),
      const SizedBox(
        width: 10,
      
      ),
      FloatingActionButton(
        onPressed: _incrementNull,
        
        
        child: const Icon(
          Icons.exposure_zero
        ),
      ),
      const SizedBox(
        width: 10,
      
      ),
      FloatingActionButton(
        onPressed: _incrementReduce,
       backgroundColor: Color.fromARGB(255, 216, 48, 48),
        child: const Icon(
          Icons.remove
        ),
      ),
      
      const SizedBox(
        height: 600,
      
      ),
      
    ]
  )
    
    );
  
  }
}

