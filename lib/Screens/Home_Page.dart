import 'package:day_2/widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../models/productModel.dart';
import '../widgets/ItemDesign.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class homepage extends StatefulWidget {
  homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Item> itemList=[];
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final productString =
        await rootBundle.loadString("assets/files/product.json");
    final productList = jsonDecode(productString);
    final itemsList = productList["products"];
    itemList =
        List.from(itemsList).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    // var days = "30 Days";
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 2"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: (itemList != null && itemList.isNotEmpty)
            ? ListView.builder(
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  return ItemDesign(item: itemList[index]);
                },
              )
            : Center(child: CircularProgressIndicator()),
      ),
      drawer: MyDrawer(),
    );
  }
}
