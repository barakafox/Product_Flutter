import 'package:assesment_flutter/Provider/Register_provider.dart';
import 'package:assesment_flutter/Screen/details_screen.dart';
import 'package:assesment_flutter/Screen/login_screen.dart';
import 'package:assesment_flutter/Screen/product_screen.dart';
import 'package:assesment_flutter/Widget/custom_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider/products_providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>RegisterProvider()),
        ChangeNotifierProvider(create: (context)=>ProductProvider())
      ],
     child:  MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Products',
      home: LoginScreen(),
      ),
    );
  }
}