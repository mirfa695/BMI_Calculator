import 'package:bmi/screen/homePage_screen.dart';
import 'package:bmi/utilities/color_constant.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const Main());
}
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: AppColors.bColor,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white.withOpacity(.5),
    shape: const CircleBorder()),
    ),
    ),
    home: const HomePage(),);
  }
}
