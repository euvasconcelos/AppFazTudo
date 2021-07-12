import 'package:flutter/material.dart';
import 'dart:math';

class CaraOuCoroa extends StatefulWidget {
  @override
  _CaraOuCoroaState createState() => _CaraOuCoroaState();
}

class _CaraOuCoroaState extends State<CaraOuCoroa> {
  AssetImage _opcaoUsuario = new AssetImage("imagens/cara_coroa.png");
  String resultado;
  String _mensagem = "";
  
  _escolhaUsuario() {
    int opcao = new Random().nextInt(2);
    

    if(opcao == 0){
      _opcaoUsuario = new AssetImage("imagens/cara.png");
      _mensagem = "Cara";
    }else if(opcao == 1){
      _opcaoUsuario = new AssetImage("imagens/coroa.png");
      _mensagem = "Coroa";
    }

  
  setState((){
      resultado = opcao.toString();
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cara ou Coroa",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        backgroundColor: Colors.orange
        ),
      backgroundColor: Colors.orange,  
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children:<Widget>[
            Text(
              _mensagem,
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            Image(image: _opcaoUsuario, height: 80),
            RaisedButton(
              child: Center(
                child: Text(
                  "Sortear",
                  style: TextStyle(fontSize:20, color: Colors.orange),
                ),
              ),
              padding: EdgeInsets.only(top: 25, bottom: 30),
              color:Colors.black,
              onPressed:_escolhaUsuario
            ),
          ],
        ),
      ),
    );
  }
}
