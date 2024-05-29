import 'package:flutter/material.dart';


import 'dart:convert';

class Product {
    int? id;
    String? title;
    String? description;
  //  List<String>? images;
  //  List<Color>? colors;
    double? rating;
    double? price;
  //  bool? isFavourite;
  //  bool? isPopular;

  Product({
       this.id,
        this.title,
        this.description,
    //     this.images,
    //     this.colors,
        this.rating,
        this.price,
    // this.isFavourite = false,
    // this.isPopular = false,
  });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['price'] = price;
    data['rating'] = rating;
    return data;
  }
}
