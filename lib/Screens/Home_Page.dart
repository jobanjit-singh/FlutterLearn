import 'package:day_2/widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../models/productModel.dart';
import '../widgets/ItemDesign.dart';

class homepage extends StatelessWidget {
  homepage({super.key});

  final itemList = [
    Item(
        id: "Jitcode1",
        name: "Oppo A77",
        desc: "Device is made by oppo",
        price: 150,
        color: "#808080",
        image:
            "https://image.oppo.com/content/dam/oppo/product-asset-library/a/a77/v2/assets/module-kv/module-kv-bg-1920.jpg"),
    Item(
        id: "jitcode2",
        name: "IPhone 13",
        desc: "Device is made by Apple",
        price: 999,
        color: "#121212",
        image:
            "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-pro-finish-unselect-gallery-2-202209?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1663790290203")
  ];

  @override
  Widget build(BuildContext context) {
    // var days = "30 Days";
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 2"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return ItemDesign(item: itemList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
