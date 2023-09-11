import 'package:bmi/custom_wiget/custom_container.dart';
import 'package:bmi/model/class.dart';
import 'package:bmi/screen/result_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double currentvalue = 0;
  int weight = 0;
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: const Color.fromRGBO(0, 0, 30, 1),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child:CustomContainer(text: 'Male', iconname: Icons.male)

                ),
                SizedBox(width: 20),
                Expanded(
                  child: CustomContainer(text: 'Female', iconname: Icons.female)
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Height',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              currentvalue.toStringAsFixed(1),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 28),
                            ),
                            const Text(
                              'cm',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            )
                          ],
                        ),
                        Slider(
                            value: currentvalue,
                            min: 0,
                            max: 300,
                            activeColor: Colors.red,
                            onChanged: ((value) {
                              setState(() {
                                currentvalue = value;
                              });
                            })),
                      ],
                    ))),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(

                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Weight',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Text(
                            '$weight',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 40),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        weight += 1;
                                      });
                                    },
                                    child: const Text(
                                      '+',
                                      style: TextStyle(fontSize: 30),
                                    )),
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        weight -= 1;
                                      });
                                    },
                                    child: const Text(
                                      '-',
                                      style: TextStyle(fontSize: 40),
                                    )),
                              ),
                            ],
                          )
                        ],
                      )),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(

                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Age',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Text(
                            age.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 40),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        age += 1;
                                      });
                                    },
                                    child: const Text(
                                      '+',
                                      style: TextStyle(fontSize: 30),
                                    )),
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        age -= 1;
                                      });
                                    },
                                    child: const Text(
                                      '-',
                                      style: TextStyle(fontSize: 40),
                                    )),
                              ),
                            ],
                          )
                        ],
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(width: double.infinity,
              child: TextButton(
                onPressed: () {
                  int w = int.parse(weight.toString());
                  double h = double.parse(currentvalue.toString());
                  var b = BMI(height: h, weight: w);
                  var res = b.calc();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result(
                              bmi: res.toString(),
                              message: b.message,
                            )),
                  );
                },
                style: TextButton.styleFrom(backgroundColor: Colors.red,),
                child: const Text(
                  'Calculate',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
