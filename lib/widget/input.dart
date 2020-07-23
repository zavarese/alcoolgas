import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget{
  var label = "";
  var ctrl = new MoneyMaskedTextController();

  Input({
    @required this.label,
    @required this.ctrl,
  });

  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
              fontFamily: "Big Shoulders Display Light",
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: TextFormField(
            controller: ctrl,
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: "Big Shoulders Display Light",
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }
}