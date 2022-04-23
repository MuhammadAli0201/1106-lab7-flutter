import 'reusableContainer.dart';
import 'package:flutter/material.dart';
import 'textIconWidget.dart';
import 'page2.dart';
import 'BMIclass.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: Color(0xFF1d2136)),
      home: BMI()));
}

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  String? R3text;

  int weight = 60;
  int age = 1;
  Icon? icon;
  Color color = Color(0xFF323244);
  Color activecolor = Color.fromARGB(255, 103, 103, 120);
  String? GestureDetect;
  int value1 = 160;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
              color: Colors.white70, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF323244),
      ),
      body: Column(
        children: [
          //--------------1st Row--------------
          Expanded(
            flex: 2,
            
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        GestureDetect = "Male";
                      });
                    },
                    child: reusableContainer(
                      color: GestureDetect == "Male" ? activecolor : color,
                      newChild: textIconWidget(
                        Wtext: "Male",
                        Wicon: Icon(
                          Icons.male,
                          size: 60,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        GestureDetect = "Female";
                      });
                    },
                    child: reusableContainer(
                      color: GestureDetect == "Female" ? activecolor : color,
                      newChild: textIconWidget(
                        Wtext: "Female",
                        Wicon: Icon(
                          Icons.female,
                          size: 60,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //--------------2nd Row--------------

          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: reusableContainer(
                    color: Color(0xFF323244),
                    newChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: TextStyle(fontSize: 15, color: Colors.white54),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                value1.round().toString(),
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white70),
                              ),
                              Text(
                                "cm",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                        Slider(
                            activeColor: Colors.pink.shade300,
                            inactiveColor: Colors.white54,
                            thumbColor: Colors.pink.shade400,
                            value: value1.toDouble(),
                            min: 100,
                            max: 300,
                            label: value1.round().toString(),
                            onChanged: (value) {
                              setState(() {
                                value1 = value.toInt();
                              });
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //--------------3rd Row--------------

          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: reusableContainer(
                    color: Color(0xFF323244),
                    newChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT(kg)",
                          style: TextStyle(fontSize: 20, color: Colors.white38),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ibuttons(Icons.add, "WEIGHT(kg)"),
                            Padding(padding: EdgeInsets.all(10)),
                            ibuttons(Icons.remove, "WEIGHT(kg)")
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: reusableContainer(
                    color: Color(0xFF323244),
                    newChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(fontSize: 20, color: Colors.white38),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ibuttons(Icons.add, "age"),
                            Padding(padding: EdgeInsets.all(10)),
                            ibuttons(Icons.remove, "age")
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          //--------------4th Row Button--------------
          Expanded(
              flex: 1,
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: reusableContainer(
                      color: Color(0xFF323244),
                      newChild: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.pink)),
                        onPressed: () {
                          // r2slider r = r2slider();

                          BMIclass b = BMIclass(value1, weight);

                          b.x();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultPage(
                                  b.b.toInt(), b.simpStatus, b.status),
                            ),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "CALCULATE YOUR BMI",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                ),
              ]))
        ],
      ),
    );
  }

  CircleAvatar ibuttons(icon, String R3text) {
    return CircleAvatar(
      backgroundColor: Color(0xFF494b57),
      child: IconButton(
          onPressed: () {
            setState(() {
              if (icon == Icons.add) {
                if (R3text == "WEIGHT(kg)") {
                  weight++;
                } else if (R3text == "age") {
                  age++;
                }
              } else if (weight > 0 && age > 0) {
                if (icon == Icons.remove && R3text == "WEIGHT(kg)") {
                  weight--;
                }
                if (icon == Icons.remove && R3text == "age") {
                  age--;
                }
              } else if (weight < 0 || age < 0) {
                weight = 0;
                age = 0;
              }
            });
          },
          icon: Icon(icon, color: Colors.white70)),
    );
  }
}
