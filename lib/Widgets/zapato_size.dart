import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/Model/ZapatoModel.dart';
import 'package:shoesapp/Pages/PantallaDescripcion.dart';

class ZapatoSize extends StatelessWidget {
  final bool fullscreen;
  ZapatoSize({this.fullscreen = false});
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: (){
        if(!this.fullscreen){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PantallaDescripsion()));
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (this.fullscreen)?5.0:30.0,
          vertical: (this.fullscreen)?5.0:0.0
          ),
        child: Container(
          width: double.infinity,
          height: (this.fullscreen)?350:380.0,
          decoration: BoxDecoration(
            color: Colors.orange[300],
            borderRadius: (this.fullscreen)?
            BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            )
            :
            BorderRadius.circular(50.0)
          ),

          child: Column(
            children: [
              _ZapatoConSombra(),
              if(!this.fullscreen)_ZapatoTallas()
            ],
          ),
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String modeloImg = Provider.of<ZapatoModel>(context).assetImage;
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 20.0,
            right: 0.0,
            child: _Sombra()
          ),
          Image(image: AssetImage(modeloImg),),
          
        ],
        
      ),
    );
  }
}

class _Sombra extends StatelessWidget { 
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

    ZapatoModel modelo = Provider.of<ZapatoModel>(context);
    return GestureDetector(
      onTap: () {
        modelo.talla = numero;
      },
      child: Container(
        width: 45.0,
        height: 45.0,
        // color: Colors.red,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: (numero == modelo.talla)?Colors.orange:Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
             BoxShadow(color: Color(0xffF1A23A),blurRadius: 10.0,offset: Offset(0, 5)),
          ],
        ),
        child: Text("${numero.toString().replaceAll(".0", "")}",style: TextStyle(
          color: (numero == modelo.talla)?Colors.white:Color(0xffF1A23A),
          fontSize: 16.0,
          fontWeight: FontWeight.bold
        ),
        
        ),
      ),
    );
  }
}