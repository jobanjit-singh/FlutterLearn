import 'package:flutter/material.dart';

import '../models/productModel.dart';

class ItemDesign extends StatelessWidget {
  final Item item;

  const ItemDesign({super.key, required this.item}) : assert(item != null);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(item.image)),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),textScaleFactor: 1.3,),
      ),
    );
  }
}
