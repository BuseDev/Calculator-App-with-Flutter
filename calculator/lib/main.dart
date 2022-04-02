import 'package:calculator/widgets/buttondesign.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  //Tutucular
  late int num1;
  late int num2;
  String shownnum="";
  String transactionHistory="";
  late String result;
  late String transactionHolder;



//Butona tıklama
void buttonclick(String buttonValue)
{
  print(buttonValue);
  if(buttonValue=="AC")
    {
      shownnum="";
      result="";
      num1=0;
      num2=0;
      transactionHistory="";
      transactionHolder="";
    }
  else if(buttonValue=="C")
    {
      shownnum="";
      result="";
      num1=0;
      num2=0;
    }
  else if(buttonValue=="BACK")
  {
    result=shownnum.substring(0,shownnum.length-1);
  }
  else if(buttonValue=="=")
  {
    num2=int.parse(shownnum);

    if(transactionHolder=="+")
      {
        result=(num1+num2).toString();
        transactionHistory=num1.toString()+transactionHolder.toString()+num2.toString();
      }
    else if(transactionHolder=="-")
    {
      result=(num1-num2).toString();
      transactionHistory=num1.toString()+transactionHolder.toString()+num2.toString();
    }
    else if(transactionHolder=="x")
    {
      result=(num1*num2).toString();
      transactionHistory=num1.toString()+transactionHolder.toString()+num2.toString();
    }
    else if(transactionHolder=="/")
    {
      result=(num1/num2).toString();
      transactionHistory=num1.toString()+transactionHolder.toString()+num2.toString();
    }
  }
  else if(buttonValue=="/")
  {
    num1=int.parse(shownnum);
    result="";
    transactionHolder=buttonValue;
  }
  else if(buttonValue=="x")
  {
    num1=int.parse(shownnum);
    result="";
    transactionHolder=buttonValue;
  }
  else if(buttonValue=="-")
  {
    num1=int.parse(shownnum);
    result="";
    transactionHolder=buttonValue;
  }
  else if(buttonValue=="+")
  {
    num1=int.parse(shownnum);
    result="";
    transactionHolder=buttonValue;
  }
  else if(buttonValue=="+/-")
  {
    if(shownnum[0]!="-"){
      result="-"+shownnum;
    }
    else{
      result=shownnum.substring(1);
    }
  }
  //Rakamlara tıklandığında
  else
  {
    result=int.parse(shownnum+buttonValue).toString();
  }
  //Durum Yenileme
  setState(() {
    shownnum=result;
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2C2B2B),
          title: const Text(
            "Calculator by Buse Boylan",
          ),
          titleTextStyle: GoogleFonts.pacifico(
            textStyle: const TextStyle(
              fontSize: 25
            )
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: const Alignment(1.0,1.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
                child: Text(
                    transactionHistory,
                     style: GoogleFonts.rubik(
                     textStyle: const TextStyle(
                       fontSize: 30,
                       color: Colors.black,
                     )
                     )
                ),
              ),
            ),
            Container(
              alignment: const Alignment(1.0,1.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
                child: Text(
                  shownnum,
                    style: GoogleFonts.rubik(
                    textStyle: const TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                )
              )
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton("AC", 0xFF2C2B2B, 0xFFFFFFFF, 30.0, buttonclick),
                CalculatorButton("C", 0xFF2C2B2B, 0xFFFFFFFF, 30.0,buttonclick),
                CalculatorButton("BACK", 0xFF2C2B2B, 0xFFFFFFFF, 16.0, buttonclick),
                CalculatorButton("/", 0xFF2C2B2B, 0xFFFFFFFF, 30.0, buttonclick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton("9", 0xFF7A7A7A, 0xFFFFFFFF, 30.0, buttonclick),
                CalculatorButton("8", 0xFF7A7A7A, 0xFFFFFFFF, 30.0, buttonclick),
                CalculatorButton("7", 0xFF7A7A7A, 0xFFFFFFFF, 30.0, buttonclick),
                CalculatorButton("x", 0xFF2C2B2B, 0xFFFFFFFF, 30.0, buttonclick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton("6", 0xFF7A7A7A, 0xFFFFFFFF, 30.0, buttonclick),
                CalculatorButton("5", 0xFF7A7A7A, 0xFFFFFFFF, 30.0, buttonclick),
                CalculatorButton("4", 0xFF7A7A7A, 0xFFFFFFFF, 30.0, buttonclick),
                CalculatorButton("-", 0xFF2C2B2B, 0xFFFFFFFF, 30.0, buttonclick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton("3", 0xFF7A7A7A, 0xFFFFFFFF, 30.0, buttonclick),
                CalculatorButton("2", 0xFF7A7A7A, 0xFFFFFFFF, 30.0, buttonclick),
                CalculatorButton("1", 0xFF7A7A7A, 0xFFFFFFFF, 30.0, buttonclick),
                CalculatorButton("+", 0xFF2C2B2B, 0xFFFFFFFF, 30.0, buttonclick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton("+/-", 0xFF2C2B2B, 0xFFFFFFFF, 30.0, buttonclick),
                CalculatorButton("0", 0xFF7A7A7A, 0xFFFFFFFF, 30.0, buttonclick),
                CalculatorButton("00", 0xFF2C2B2B, 0xFFFFFFFF, 30.0, buttonclick),
                CalculatorButton("=", 0xFF000000, 0xFFFFFFFF, 30.0, buttonclick),
              ],
            )

          ],
        ),
      ),
    );
  }
}

