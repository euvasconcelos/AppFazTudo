import 'package:flutter/material.dart';
import 'package:dispositivosmoveis/pedrapapeltesoura.dart';
import 'package:dispositivosmoveis/caracoroa.dart';


class Games extends StatefulWidget {
  @override
  _GamesState createState() => _GamesState();
}

class _GamesState extends State<Games> {

  void _chamacara (){
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>CaraOuCoroa()),
    );
  }

  void _chamajokenpo (){
     Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Jokenpo()),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Games",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          backgroundColor: Colors.orange),
      backgroundColor: Colors.orange,
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,    
          children: <Widget>[
            Image.asset("imagens/Game.png"),
            Padding(
              padding: EdgeInsets.only(top:20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: _chamacara,
                    child: Center(
                      child: Image.asset("imagens/tokens.png"),
                  ),
                  ),
                  GestureDetector(
                    onTap: _chamajokenpo,
                    child: Image.asset("imagens/jokenpo.png"),
                    
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