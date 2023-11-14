import 'package:flutter/material.dart';
import 'sign_up_screen.dart';

void main() {
  //Flutter 프로젝트를 실행시키는 main 함수
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //MyHomePage 클래스를 실행시키는 MyApp 클래스
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
        backgroundColor: const Color.fromARGB(255, 178, 189, 255),
        title: const Text('로그인 페이지'),
      ),
      body: Form(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'e-mail',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                color: const Color.fromARGB(255, 255, 255, 164),
                child: TextFormField(),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'password',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                color: const Color.fromARGB(255, 255, 255, 164),
                child: TextFormField(),
              ),
              const SizedBox(height: 100),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignUpScreen();
                      },
                    ),
                  );
                },
                child: const Text('👉회원가입 페이지로 이동👈'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
