import 'package:flutter/material.dart';
import 'package:shoesapp/Widgets/CustomAppBar.dart';
import 'package:shoesapp/Widgets/zapato_size.dart';
class ZapatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar("For You"),
          ZapatoSize()
        ],
      ),
    );
  }
}