import 'package:flutter/material.dart';

class ZapatoSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 430.0,
        decoration: BoxDecoration(
          color: Colors.orange[300],
          borderRadius: BorderRadius.circular(50.0)
        ),

        child: Column(
          children: [
            _ZapatoConSombra(),
            _ZapatoTallas()
          ],
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 20.0,
            right: 0.0,
            child: _sombra()
          ),
          Image(image: AssetImage("assets/imgs/azul.png"),),
          
        ],
        
      ),
    );
  }
}

class _sombra extends StatelessWidget {
  const _sombra({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        //color: Colors.pink,
        width: 230.0,
        height: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xffEAA14E),
              blurRadius: 20.0
            )
          ]
        ),
      ),
    );
  }
}


class _ZapatoTallas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TallaZapatoCaja(7),
          _TallaZapatoCaja(7.5),
          _TallaZapatoCaja(8),
          _TallaZapatoCaja(8.5),
          _TallaZapatoCaja(9),
          _TallaZapatoCaja(9.5),
        ],
      ),
    );
  }
}

class _TallaZapatoCaja extends StatelessWidget {
  
  final double numero;
  _TallaZapatoCaja(this.numero);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.0,
      height: 45.0,
      // color: Colors.red,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          // BoxShadow()
        ]
      ),
      child: Text("${numero.toString().replaceAll(".0", "")}",style: TextStyle(
        color: Color(0xffF1A23A),
        fontSize: 16.0,
        fontWeight: FontWeight.bold
      ),
      
      ),
    );
  }
}