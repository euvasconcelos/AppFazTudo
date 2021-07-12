import 'package:flutter/material.dart';
import 'package:dispositivosmoveis/consultacep.dart';
import 'package:dispositivosmoveis/consultabitcoin.dart';



class Consultas extends StatefulWidget {
  @override
  _ConsultasState createState() => _ConsultasState();
}

class _ConsultasState extends State<Consultas> {

  void _chamacep(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>ConsultaCep()),
    );
  }

  void _chamabitcoin (){
       Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>ConsultaBitcoin()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Consultas",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          backgroundColor: Colors.orange),
      backgroundColor: Colors.orange,
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,    
          children: <Widget>[
            Image.asset("imagens/Consultas.png"),
            Padding(
              padding: EdgeInsets.only(top:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: _chamabitcoin,
                    child: Center(
                      child: Image.asset("imagens/Bitcoin.png")                   
                  ),
                  ),
                  GestureDetector(
                    onTap: _chamacep,
                    child: Image.asset("imagens/Cep.png")
                
                  ),                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}