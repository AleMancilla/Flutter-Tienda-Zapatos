import 'package:flutter/material.dart';

class ZapatoModel with ChangeNotifier{

  String _assetImage = "assets/imgs/azul.png";
  double _talla = 9.0;

  String get assetImage => this._assetImage;
  double get talla => this._talla;

  set assetImage(String asset){
    this._assetImage = asset;
    notifyListeners();
  }

  set talla(double numero){
    this._talla = numero;
    notifyListeners();
  }

}