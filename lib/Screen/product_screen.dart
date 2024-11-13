import 'package:assesment_flutter/Widget/custom_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/products_providers.dart';
import '../Widget/custom_details.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Consumer<ProductProvider>(
          builder: (context, objectProvider, child) {
            var objectModel = objectProvider?.productModel;
            if (objectModel == null) {
              objectProvider.fetchData();
              return CircularProgressIndicator();
            } else {
              return SingleChildScrollView(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: objectModel.products.length,
                  itemBuilder: (context, index) {
                    return CustomProduct(
                      image: objectModel.products[index]['image'],
                      name: objectModel.products[index]['name'],
                      descriptions: objectModel.products[index]['description'],
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

class Product {
  String imageurl;
  String title;
  String description;

  Product({required this.imageurl, required this.title, required this.description});
}
