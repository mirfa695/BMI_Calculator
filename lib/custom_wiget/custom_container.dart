import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
   const CustomContainer({required this.text,required this.iconname,
    Key? key}) : super(key: key);
  final String text;
  final IconData iconname;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.1),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Column(children:  [
          Icon(
            iconname,
            color: Colors.white,
            size: 120,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey, fontSize: 30),
          )
        ]));
  }
}
