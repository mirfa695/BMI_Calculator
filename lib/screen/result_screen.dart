import 'package:bmi/screen/homePage_screen.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Result({required this.bmi, required this.message, Key? key})
      : super(key: key);
  String bmi;
  String? message;
  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('BMI Calculator'),
          backgroundColor: const Color.fromRGBO(0, 0, 30, 1),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ))),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your result',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.3),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    '${widget.message}',
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    widget.bmi.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 40),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text(
                    'Re-Calculate',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
