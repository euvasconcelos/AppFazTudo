import 'package:flutter/material.dart';



class Membros extends StatefulWidget {
  @override
  _MembrosState createState() => _MembrosState();
}

class _MembrosState extends State<Membros> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Equipe",
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
            Image.asset("imagens/Membros.png"),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text("\n Erick Vasconcelos\n Ingrid Tavares\n Jane Vieira\n",style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}