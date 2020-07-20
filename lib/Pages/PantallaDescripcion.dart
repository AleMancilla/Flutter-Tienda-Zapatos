import 'package:flutter/material.dart';
import 'package:shoesapp/Widgets/ZapatoDesc.dart';
import 'package:shoesapp/Widgets/zapato_size.dart';

class PantallaDescripsion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ZapatoSize(fullscreen : true),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children:[
                      ZapatosDescripcion(
                        titulo: 'Nike Air Max 720',
                        descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                      ),
                      ZapatosDescripcion(
                        titulo: 'Nike Air Max 720',
                        descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                      ),
                  ] 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}