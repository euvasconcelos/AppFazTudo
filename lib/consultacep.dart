import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ConsultaCep extends StatefulWidget {
  @override
  _ConsultaCep createState() => _ConsultaCep();
}

class _ConsultaCep extends State<ConsultaCep> {
  TextEditingController txtcep = new TextEditingController();
  String resultado;

  _consultacep() async {
    String cep = txtcep.text;
    String url = "https://viacep.com.br/ws/${cep}/json/";

    http.Response response;
    response = await http.get(url);

    Map<String, dynamic> retorno = json.decode(response.body);

    String endereco = retorno["logradouro"];
    String cidade = retorno["localidade"];
    String bairro = retorno["bairro"];

    setState(() {
      resultado = "${endereco},${bairro},${cidade}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Consultar Cep",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          backgroundColor: Colors.orange),
      backgroundColor: Colors.orange,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText:"Informe o CEP ex: 12345678"
              ),
              style: TextStyle(fontSize: 15),
              controller: txtcep,
            ),
            Text(
              "Resultado: ${resultado}",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            RaisedButton(
              child: Center(
                child: Text(
                "Consultar",
                style: TextStyle(fontSize: 25, color: Colors.orange),
              ),
              ),
              
              padding: EdgeInsets.only(top: 25, bottom: 30),
              color: Colors.black,
              onPressed: _consultacep,
            ),
          ],
        ),
      ),
    );
  }
}
