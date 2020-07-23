import 'package:alcoolgas/widget/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'loading-button.dart';

class SubmitForm extends StatelessWidget{
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.busy,
    @required this.alcCtrl,
    @required this.gasCtrl,
    @required this.submitFunc,
  });


  Widget build (BuildContext context){
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Gasolina",
            ctrl: gasCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: "Alcool",
            ctrl: alcCtrl,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        LoadingButton(
            busy: busy,
            func: submitFunc,
            text: "CALCULAR",
            invert: false,
        ),
      ],
    );
  }
}