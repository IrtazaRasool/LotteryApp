import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'LOTTERY APP',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              'Lottery Winning Number is 4',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            )),
            const SizedBox(
              height: 15,
            ),
            Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: x == 4 ? Colors.cyan.shade100 : Colors.pinkAccent.shade100 ),


              child: x == 4
                  ? const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.red,
                    size: 34,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      'Number Matched',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )
                  : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 34,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      x != null
                          ? 'Better Luck Next Time \nYour number is $x \nTRY AGAIN'
                          : '',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           x= random.nextInt(10);
           print(x);
           setState(() {

           });
          },
          child: const Icon(Icons.refresh_outlined),
        ),
      ),
    );
  }
}
