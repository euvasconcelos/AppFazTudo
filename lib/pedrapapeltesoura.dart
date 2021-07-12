import 'package:flutter/material.dart';
import 'dart:math';


class Jokenpo extends StatefulWidget {
  @override
  _JokenpoState createState() => _JokenpoState();
}

class _JokenpoState extends State<Jokenpo> {
  Text _Text = Text(
    "Aguardando . . .",
    style:TextStyle(
      fontSize: 30
    )
  );

  AssetImage _escolhaMaquina = new AssetImage("imagens/padrao.png");

  void escolhaUsuario(int value){
    int resposta = new Random().nextInt(3);

    setState((){
      if (resposta == 0)
        _escolhaMaquina = new AssetImage("imagens/pedra.png");

      else if (resposta == 1)
        _escolhaMaquina = new AssetImage("imagens/papel.png");
      else if(resposta == 2)
        _escolhaMaquina = new AssetImage("imagens/tesoura.png");    
    });

    String _mensagem = "";
    if(value == resposta){
      _mensagem = "Empate ! ";
    }
    else if(value == 0 && resposta == 1){
      _mensagem = "Você Perdeu !";
    }
    else if(value == 0 && resposta == 2){
      _mensagem = "Você Ganhou !";
    }
    else if(value == 1 && resposta == 0){
      _mensagem = "Você Ganhou !";
    }
    else if(value == 1 && resposta == 2){
      _mensagem = "Você Perdeu !";
    }
    else if(value == 2 && resposta == 0){
      _mensagem = "Você Perdeu !";
    }
    else if(value == 2 && resposta == 1){
      _mensagem = "Você Ganhou !";
    }

    setState((){
      _Text = Text(
        _mensagem,
        style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold)
      );

    });

  }

    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pedra/Papel/Tesoura",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        backgroundColor: Colors.orange),
      backgroundColor: Colors.orange,  
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, 
        children: <Widget>[  
        Padding(
          padding: EdgeInsets.only(top: 32, bottom: 16),
          child: Text("Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ),
        Image(image: _escolhaMaquina, height: 80),
        Padding(
          padding: EdgeInsets.only(top: 32, bottom: 16),
          child: Text("Escolha uma opção abaixo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: <Widget>[
          GestureDetector(
            onTap: () {
              escolhaUsuario(0);
            },
            child: Image.asset("imagens/pedra.png", height: 80),
          ),
          GestureDetector(
            onTap: () {
              escolhaUsuario(1);
            },
            child: Image.asset("imagens/papel.png", height: 80),
          ),
          GestureDetector(
            onTap:(){
              escolhaUsuario(2);
            },
            child: Image.asset("imagens/tesoura.png", height: 80),
          ),
        ]),
        Padding(
          padding: EdgeInsets.only(top: 32, bottom: 16),
          child: _Text,
        )
      ]),
    );
  }
}
