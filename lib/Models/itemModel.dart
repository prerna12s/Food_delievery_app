import 'package:flutter/material.dart';
class ItemModel{
  final String ?Image;
  final String ?Name;


  ItemModel({required this.Image,required this.Name});

ItemModel.fromMap(Map<dynamic,dynamic> res)
  : Image=res["Image"],
     Name=res["Name"];

Map<String,Object?>toMap(){
  return {
    'Image': Image,
    'Name':Name,

  };
}

}