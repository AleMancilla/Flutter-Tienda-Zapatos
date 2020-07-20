import 'package:flutter/material.dart';

class ZapatosDescripcion extends StatelessWidget {

  final String titulo;
  final String descripcion;

  ZapatosDescripcion({
    @required this.titulo, 
    @required this.descripcion}
    );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.0,),
          Text(this.titulo,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
          SizedBox(height: 20.0,),
          Text(this.descripcion,style: TextStyle(color: Colors.black54,height: 1.2),),  
        ],
      ),
    );
  }
}