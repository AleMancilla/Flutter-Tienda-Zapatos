import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/Model/ZapatoModel.dart';
import 'package:shoesapp/Pages/ZapatoPage.dart';
 
void main() { 
  
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>ZapatoModel()),
      ],
      child: MyApp()
      )
    );
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ZapatoPage()
    );
  }
}