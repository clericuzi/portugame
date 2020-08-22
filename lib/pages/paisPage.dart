import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaisPage extends StatelessWidget {

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
            SizedBox(height: 05),
            _introCard(),
            _title(' ', ),
            // Texto abaixo do box grande cinza

            Text( 'Preencha as lacunas com as palavras corretas, de acordo com o novo acordo ortográfico: \n ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),),
      Text('Os membros das   __(1)__   estaduais do país gostaram da   __(2)__   do Harold  '
                '   _(3)_   . Um parlamentar aproveitou, inclusive, a   __(4)__   de uma peça de'
                'teatro que assistia na cidade de   __(5)__   para se dirigir à   __(6)__   , dizendo:'
                '“Eu   __(7)__   esta ação comunitária. E digo mais: se iniciativa der certo, esses'
                '   __(8)__   merecerão   __(9)__   como agradecimento de toda a população.”'
                  'comunidades que falam o português, contudo não é idioma oficial.\n \n ', textAlign: TextAlign.justify),

        Text( 'Resposta:'),
            Text( '__(1)__   a) assembléias    b) assembleias \n '),
            Text( '__(2)__   a) idéia    b) ideia  \n '),
            Text( '__(3)__   a) Müller    b) Muller \n '),
            Text( '__(4)__   a) estréia    b) estreia \n '),
            Text( '__(5)__   a) Bocaiúva    b) Bocaiuva \n '),





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
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(16),
      height: 100,
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
            'QUIZ',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 30,
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
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(height: 5),

      ],
    );
  }

}