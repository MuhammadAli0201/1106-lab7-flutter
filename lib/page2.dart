import 'package:flutter/material.dart';
import 'package:question_1/main.dart';
import 'package:question_1/reusableContainer.dart';

class ResultPage extends StatefulWidget {
  int? bmi;
  String? simpStatus;
  String? status;
  //ResultPage(this.bmi);
  ResultPage(this.bmi,this.simpStatus,this.status);

 // ResultPage.GetBmi();
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
              color: Colors.white70, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF323244),
      ),
      body: Column(children: [
        Expanded(
            flex: 1,
            child: Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(20, 30, 0, 0)),
                Text(
                  "Your Result",
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
              ],
            )),
        Expanded(
          flex: 5,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: reusableContainer(
                  color: Color(0xFF323244),
                    newChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.simpStatus.toString(),
                      style: TextStyle(fontSize: 30, color: Colors.green),
                    ),
                    Text(
                      widget.bmi.toString(),
                      style: TextStyle(
                          fontSize: 90,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.status.toString(),
                      style: TextStyle(fontSize: 30, color: Colors.white70),
                    )
                  ],
                ),
                ),
              
              )
            ],
          ),
        ),
        Expanded(
            flex: 1,
            child: Row(children: [
              Expanded(
                flex: 1,
                child: reusableContainer(
                  color: Color(0xFF323244),
                    newChild: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.pink)),
                  onPressed: () {
                    
         // print(widget.bmi);
                    Navigator.pop(
                      
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMI(),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "RE-CALCULATE YOUR BMI",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                )),
              ),
            ]))
      ]),
    );
  }
}
