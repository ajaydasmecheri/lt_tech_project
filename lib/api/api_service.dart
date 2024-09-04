import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lt_technologies_project/models/api_model.dart';



  

  Future<List<ProductData>> fetchProducts() async {
    final response = await http.get(Uri.parse("https://ajaydasmecheri.github.io/lt_technologies_project/products.json"));

      List<dynamic> data = json.decode(response.body);
      return data.map((json) => ProductData.fromJson(json)).toList();
   
  }

