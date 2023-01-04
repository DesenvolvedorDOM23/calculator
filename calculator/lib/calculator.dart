import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  Calculator({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.only(top: 100),
        alignment: Alignment.bottomLeft,
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "1,337",
              style: TextStyle(color: Colors.white, fontSize: 60),
            ),
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _BuildButton("AC", fontSize: Colors.black),
              _BuildButton("+/-", fontSize: Colors.black),
              _BuildButton("%", fontSize: Colors.black),
              _BuildButton("÷", backgroundColor: Colors.orange)
            ],
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _BuildButton("7", backgroundColor: Colors.grey.shade900),
              _BuildButton("8", backgroundColor: Colors.grey.shade900),
              _BuildButton("9", backgroundColor: Colors.grey.shade900),
              _BuildButton("+", backgroundColor: Colors.orange)
            ],
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _BuildButton("4", backgroundColor: Colors.grey.shade900),
              _BuildButton("5", backgroundColor: Colors.grey.shade900),
              _BuildButton("6", backgroundColor: Colors.grey.shade900),
              _BuildButton("-", backgroundColor: Colors.orange)
            ],
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _BuildButton("1", backgroundColor: Colors.grey.shade900),
              _BuildButton("2", backgroundColor: Colors.grey.shade900),
              _BuildButton("3", backgroundColor: Colors.grey.shade900),
              _BuildButton("+", backgroundColor: Colors.orange)
            ],
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _BuildButtonBig(),
              _BuildButton(",", backgroundColor: Colors.grey.shade900),
              _BuildButton("=", backgroundColor: Colors.orange),
            ],
          )
        ]),
      ),
    );
  }
}

Widget _BuildButton(String keyboard,
    {Color backgroundColor = Colors.grey, Color fontSize = Colors.white}) {
  return SizedBox(
    width: 65,
    height: 65,
    child: ElevatedButton(
      onPressed: null,
      child: Text(
        "$keyboard",
        style: TextStyle(color: fontSize, fontSize: 20),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(backgroundColor),
        shape: MaterialStateProperty.all(CircleBorder()),
      ),
    ),
  );
}

Widget _BuildButtonBig() {
  return SizedBox(
    width: 160,
    height: 65,
    child: ElevatedButton(
      onPressed: null,
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          "0",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade900),
          shape: MaterialStateProperty.all(StadiumBorder()),
          alignment: Alignment.centerLeft),
    ),
  );
}
