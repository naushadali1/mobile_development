import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 226, 234),
      appBar: AppBar(
        title: const Center(child: Text('Flutter')),
        backgroundColor: Colors.blue.shade400,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/logo.png')),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Login Page',
                      style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 222, 204, 123)),
                    ),
                    Text(
                      'Explore Flutter world',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 72, 189, 98)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            const Center(
              child: Text(
                'Welcome to my flutter app \n You can check after login ',
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: const Icon(Icons.email_outlined),
                    fillColor: const Color.fromARGB(255, 191, 205, 216),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.password_outlined),
                    suffixIcon: const Icon(Icons.visibility),
                    fillColor: const Color.fromARGB(255, 191, 205, 216),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 250),
              child: Text('Forgot Password',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color.fromARGB(255, 10, 10, 10),
                    decoration: TextDecoration.underline,
                  )),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              height: 30,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(7.0)),
              child: const Center(
                child: Text('Login'),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an Account?',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color.fromARGB(255, 10, 10, 10),
                    )),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'SIgn Up',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 74, 126, 182)),
                ),
              ],
            ),
            Text(x.toString(), style: TextStyle(fontSize: 26.0)),
            FloatingActionButton(
              onPressed: (() {
                x++;
                setState(() {});
              }),
              backgroundColor: Colors.blue,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    ));
  }
}
