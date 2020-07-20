import 'package:flutter/material.dart';
import 'package:shoesapp/Widgets/BotonNaranja.dart';
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
                      _MontoBuy(),
                      _ColoresYMas()
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

class _ColoresYMas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(child: _BotonColor(color: Colors.blue,),left: 90,), 
                Positioned(child: _BotonColor(color: Colors.red,),left: 60,), 
                Positioned(child: _BotonColor(color: Colors.cyan,),left: 30,), 
                _BotonColor(color: Colors.orange,),

                ],
            ),
          ),

          // Spacer(),

          BotonNaranja(texto: "More related item",alto: 30.0,ancho: 170.0,color: Colors.orange[200],)
        ],
      ),
    );
  }
}

class _BotonColor extends StatelessWidget {
  final Color color;
  _BotonColor({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.0,
      height: 45.0,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle
      ),
    );
  }
}

class _MontoBuy extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        child: Row(
          children: [
            Text("\$180",style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),),
            Spacer(),
            BotonNaranja(texto: "Buy Now",alto: 40.0,ancho: 120.0,)
          ],
        ),
      ),
    );
  }
}