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
            Stack(
              children: [
                Hero( tag: "clave1",child: ZapatoSize(fullscreen : true)),
                Positioned(
                  left: 10.0,
                  top: 20.0,
                  child: FloatingActionButton(
                    elevation: 0.0,
                    highlightElevation: 0.0,
                    backgroundColor: Colors.transparent,
                    child: Icon(Icons.chevron_left,size: 60.0,),
                    onPressed: (){
                      Navigator.pop(context);
                    }
                  ),
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children:[
                      ZapatosDescripcion(
                        titulo: 'Nike Air Max 720',
                        descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                      ),
                      _MontoBuy(),
                      _ColoresYMas(),
                      _LikeCar()
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

class _LikeCar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0),
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _BotonSombreado(Icon(Icons.favorite,color: Colors.red,size: 25.0,)),
          _BotonSombreado(Icon(Icons.add_shopping_cart,color: Colors.grey.withOpacity(0.4),size: 25.0,)),
          _BotonSombreado(Icon(Icons.settings,color: Colors.grey.withOpacity(0.4),size: 25.0,)),
        ],
      ),
    );
  }
}

class _BotonSombreado extends StatelessWidget {
  final Icon icon;
  _BotonSombreado(this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.0,
      height: 45.0,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          // BoxShadow(
          //   offset: Offset(0, 10),
          //   color: Colors.red,
          //   blurRadius: 10, 
          //   spreadRadius: -5,
          // )
          BoxShadow(color: Colors.black26,spreadRadius: -5,blurRadius: 20, offset: Offset(0, 10))
        ]
      ),
      child: this.icon,
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
        color: color,
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