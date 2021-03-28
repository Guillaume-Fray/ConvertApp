import 'package:flutter/material.dart';

 class Unit {
   final String name;
   final double factor;

   const Unit({
     @required this.name,
     @required this.factor,
    })  : assert(name != null),
         assert(factor != null);

   // Creates a [Unit] instance from a JSON file
   Unit.fromJson(Map jsonMap)
       : assert(jsonMap['name'] != null),
         assert(jsonMap['factor'] != null),
         name = jsonMap['name'],
         factor = jsonMap['factor'].toDouble();
 }