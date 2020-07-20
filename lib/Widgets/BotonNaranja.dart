import 'package:flutter/material.dart';

class BotonNaranja extends StatelessWidget {
  final String texto;
  BotonNaranja({@required this.texto});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150.0,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Colors.orange
      ),
      child: Text("$texto", style: TextStyle(color: Colors.white),),
    );
  }
}