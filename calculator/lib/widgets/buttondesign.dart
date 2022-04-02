import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
//Buton taslak parametreleri
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function click;

  CalculatorButton(
      this.text,
      this.fillColor,
      this.textColor,
      this.textSize,
      this.click);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 80,
        height: 80,
        child: FlatButton(
          onPressed: () {
            click(text);
          },
          color: Color(fillColor),
          textColor: Color(textColor),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Text(
            text,
            style: GoogleFonts.rubik(
                textStyle: TextStyle(
              fontSize: textSize,
            )),
          ),
        ),
      ),
    );
  }
}
