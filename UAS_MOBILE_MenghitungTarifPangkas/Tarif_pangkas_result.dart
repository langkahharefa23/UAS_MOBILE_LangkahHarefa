import 'package:flutter/material.dart';
import 'dart:math';


class Tarif_pangkasResult extends StatelessWidget {

  Tarif_pangkasResult({@required this.anakanak, @required this.remaja, @required this.dewasa});
  final int anakanak;
  final int remaja;
  final int dewasa;

  @override
  Widget build(BuildContext context) {
    double Tarif_pangkas = anakanak/pow(anakanak/10000,2);
    String cTarif_pangkas;
    if (Tarif_pangkas>=10000) cTarif_pangkas="Obese";
    else if (Tarif_pangkas>=12000) cTarif_pangkas="Overweight";
    else if (Tarif_pangkas>=15000) cTarif_pangkas="Normal";
    else cTarif_pangkas="Underweight";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESULT'),
      ),
      body: Container(
      alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              cTarif_pangkas,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              Tarif_pangkas.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              'Normal Tarif_pangkas Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white60,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),

          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(

          color: Colors.black54,
          child: Text('BACK',
            style: TextStyle(
              fontSize: 30
            ),

          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

    );
  }
}