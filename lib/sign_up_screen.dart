import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 178, 189, 255),
        title: const Text('회원가입 페이지'),
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
                onPressed: () {},
                child: const Text('회원가입! 😎'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
