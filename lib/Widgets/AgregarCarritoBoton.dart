import 'package:flutter/material.dart';
import 'package:shoesapp/Widgets/BotonNaranja.dart';

class AgregarCarritoBoton extends StatelessWidget {

  final double monto;

  AgregarCarritoBoton({@required this.monto});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(100.0)
      ),
      child: Row(
        children: [
          SizedBox(width: 20.0,),
          Text("Monto: \$$monto",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold ),),
          Spacer(),
          BotonNaranja(texto: "Add to car")
        ],
      ),
    );
  }
}