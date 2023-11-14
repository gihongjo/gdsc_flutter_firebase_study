import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase를 배워보아요.'),
      ),
      body: Form(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'e-mail',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                color: Color.fromRGBO(255, 255, 0, 1),
                child: TextFormField(),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'password',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                color: Color.fromRGBO(255, 255, 0, 1),
                child: TextFormField(),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
