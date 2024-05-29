import 'dart:convert';
import 'dart:math';

import 'package:books/models/products.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
class ProductCallApi {
  static String api = "https://jsonplaceholder.typicode.com/posts";

  static List<Product> parseProduct(String resBody) {
    var list = json.decode(resBody) as List<dynamic>;

    List<Product> listPro = list.map((e) => Product.fromJson(e)).toList();

    return listPro;
  } 

  static Future<List<Product>> getProducts() async {
    var response = await http.get(Uri.parse(api));
    
    if(response.statusCode==200){
      var list = json.decode(response.body) as List<dynamic>;
      List<Product> listProduct = list.map((p) => Product.fromJson(p)).toList();
      print(listProduct);
      return listProduct;
      // return compute(parseProduct, response.body);
    } else {
      throw Exception("Not Fount");
    }
  }

  static Map<String, String> header = {
    'Content-type':'application/json',
    'Accept':'application/json'
  };

  // static Future<bool> postProduct(Product pro) async{
  //   var jsonData = pro.toJson();
  //   var encodeJsonData = json.encode(jsonData);
  //   var res = await http.post(Uri.parse(url), headers: header, body: encodeJsonData);
  //   return Future.value(res.statusCode==201?true:false);
  // }

  // static Future<bool> putProduct(Product pro) async{
  //   var jsonData = pro.toJson();
  //   var encodeJsonData = json.encode(jsonData);
  //   var res = await http.put(Uri.parse('$url/${pro.proId}'), headers: header, body: encodeJsonData);
  //   return Future.value(res.statusCode==201?true:false);
  // }

  // static Future<bool> deleteProduct(int proId) async{
  //   var res = await http.delete(Uri.parse('$url/$proId'), headers: header);
  //   return Future.value(res.statusCode==201?true:false);
  // }
}