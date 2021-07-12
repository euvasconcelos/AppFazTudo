import 'package:flutter/material.dart';
import 'package:dispositivosmoveis/games.dart';
import 'package:dispositivosmoveis/consultas.dart';
import 'package:dispositivosmoveis/membros.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _chamagames (){
     Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Games()),
    );
  }

  void _chamaconsulta (){
     Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Consultas()),
    );

  }

    _chamamembros (){
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Membros()),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "FazTudoApp - Home",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          backgroundColor: Colors.orange),
      backgroundColor: Colors.orange,
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,    
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: _chamagames,
                    child: Center(
                      child: Image.asset("imagens/Game.png"),
                    ),  
                  ),
                  GestureDetector(
                    onTap: _chamaconsulta,
                    child: Center(
                      child: Image.asset("imagens/Consultas.png"),          
                  ),
                  ),                 
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: _chamamembros,
                    child: Center(
                      child: Image.asset("imagens/Membros.png"),
                    ),  
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