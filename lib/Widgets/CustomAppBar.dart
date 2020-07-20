import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  final String texto;

  CustomAppBar(this.texto);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          color: Colors.red,
          width: double.infinity,
          child: Row(
            children: [
              Text("$texto",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w700),),
              Spacer(),
              Icon(Icons.search,size: 30.0,)
            ],
          ),
        ),
      ),
    );
  }
}