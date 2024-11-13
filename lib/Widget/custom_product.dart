import 'package:assesment_flutter/Screen/details_screen.dart';
import 'package:assesment_flutter/Screen/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomProduct extends StatelessWidget {
  final String image;
  final String name;
  final String descriptions;
  CustomProduct({super.key,
    required this.image,
    required this.name,
    required this.descriptions});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              GestureDetector(///fff
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: Product(imageurl: image, title: name, description: descriptions),
                      ),
                    ),
                  );
                },
                child: Image.network(image , width: 70, height: 50,),
              ),
              SizedBox(height: 40),
              Text(name), // Display the price
            ],
          ),
        ),
      ],
    );
  }
}
