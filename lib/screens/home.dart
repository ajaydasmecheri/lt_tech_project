import 'package:flutter/material.dart';
import 'package:lt_technologies_project/api/api_service.dart';
import 'package:lt_technologies_project/models/api_model.dart';
import 'package:lt_technologies_project/screens/productdetails.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late Future<List<ProductData>> futureProducts;

  @override
  void initState() {
    super.initState();
    futureProducts = fetchProducts();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ProductData>>(
        future: futureProducts,
        builder: (context, snapshot) {

           
           if (!snapshot.hasData ) {
            return const Center(child: Text('No products available'));
          }

            {
            final products = snapshot.data!;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  leading: Image.network(product.image, width: 50, height: 50),
                  title: Text(product.title),
                  subtitle: Text(' ₹ ${product.price}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailScreen(product: product),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}