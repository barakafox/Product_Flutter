import 'package:assesment_flutter/Screen/product_screen.dart';
import 'package:assesment_flutter/Widget/custom_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/products_providers.dart';

class DetailsScreen extends StatelessWidget {
  Product product;
   DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network(product.imageurl , width: 100,),
          Text(product.title , style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 25,),
          Text(product.description)
        ]
      ),
    );
  }
}
