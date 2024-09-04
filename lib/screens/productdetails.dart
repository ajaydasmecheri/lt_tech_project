import 'package:flutter/material.dart';
import 'package:lt_technologies_project/models/api_model.dart';
import 'package:lt_technologies_project/root_setup/routers.dart';

class ProductDetailScreen extends StatelessWidget {
  final ProductData product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(product.image),
              const SizedBox(height: 16),
              Text(
                product.title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(' ₹ ${product.price}', style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 16),
              Text(product.description),
              const SizedBox(
                height: 30,
              ),
              const Center(
                  child: Text(
                "rating",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 20,
              ),
              Center(child: Text(product.rating.toString())),
              const SizedBox(
                height: 30,
              ),
              const Center(
                  child: Text(
                "reviews",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 20,
              ),
              Center(child: Text(product.review)),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routers.firecart,
                            arguments: {
                              "productname": product.title,
                              "productprice": product.price,
                              "productimage": product.image
                            });
                      },
                      child: const Text("add to cart")),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("buy now")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
