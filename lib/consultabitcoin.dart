import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';


class ConsultaBitcoin extends StatefulWidget {
  @override
  _ConsultaBitcoinState createState() => _ConsultaBitcoinState();
}

class _ConsultaBitcoinState extends State<ConsultaBitcoin> {
  TextEditingController txtreal = new TextEditingController();
  
  String resultado = "0";
  double bitcoin;

  _consultabitcoin() async {
    String real = txtreal.text;
    String url = "https://blockchain.info/pt/ticker";

    http.Response response;
    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);

    setState(() {
      resultado = retorno["BRL"]["buy"].toString();
  
      bitcoin = (double.parse(real)/(double.parse(resultado)));
      
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Conversor Bitcoin",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          backgroundColor: Colors.orange),
      backgroundColor: Colors.orange,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Informe o valor em R\$: "
              ),
              style:TextStyle(fontSize: 20),
              controller: txtreal,
            ),
            Text(
              "Valor Atual BTC\nR\$:" + resultado,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            Text(
              "Valor Convertido\n₿:" + bitcoin.toString() ,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            RaisedButton(
                child: Center(
                  child: Text(
                    "Converter",
                    style: TextStyle(fontSize: 20, color: Colors.orange),
                  ),
                ),
                padding: EdgeInsets.only(top: 25, bottom: 30),
                color: Colors.black,
                onPressed: _consultabitcoin, 
            ),
          ],
        ),
      ),
    );
  }
}
