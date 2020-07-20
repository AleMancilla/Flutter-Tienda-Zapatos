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
            _ZapatoConSombra()
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