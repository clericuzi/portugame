import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TirinhaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEFEFE),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15, top: 30, right: 15), // Espaçamento da largura total
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _greetings(), //tá chamando o cabeçalho: App Letras
              ],
            ),
            SizedBox(height: 6),
            _introCard(),

            Image.asset('assets/dica1.PNG',),
            Image.asset('assets/t2.PNG',),
            Image.asset('assets/t3.PNG',),
            Image.asset('assets/t4.PNG',),
            Image.asset('assets/t5.PNG',),
            Image.asset('assets/t6.PNG',),
            const SizedBox(height: 40), //espaço entre linhas
          ],
        ),
      ),
    );
  }

  _title(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black, // cor do texto MENU
      ),
    );
  }

  _introCard() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(16),
      height: 80,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'), //figura cinza escuro
            fit: BoxFit.fill,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.10), //cor da sombra do box
              offset: Offset(0, 3),
              spreadRadius: 4,
              blurRadius: 5,
            )
          ]),


      child: Column( //gera texto dentro do box cinza
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'PortuGame', // Texto dentro do box grande***
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ),
          ),
          SizedBox(height: 1),
          Text(
            'Principais Alterações',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  _greetings() { // gera o título: App Letras***
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'App Letras', // TÍTULO: App Letras***
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 3),

      ],
    );
  }
}