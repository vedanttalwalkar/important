import 'package:delete_this_one/cart_page.dart';
import 'package:delete_this_one/product_info.dart';
import 'package:flutter/material.dart';

class DisplayProduct extends StatefulWidget {
  const DisplayProduct({super.key});

  @override
  State<DisplayProduct> createState() => _DisplayProductState();
}

class _DisplayProductState extends State<DisplayProduct> {
  void _update(product) {
    setState(() {
      listOfFruits = ProductList.instaceOfProductList.productList;
    });
  }

  var listOfFruits = ProductList.instaceOfProductList.productList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CartPage(_update);
        }));
      }),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fruit App'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      ProductList.instaceOfProductList
                          .removeItems(listOfFruits[0]);
                    });
                  },
                  icon: const Icon(Icons.remove)),
              Column(
                children: [
                  Text(listOfFruits[0].name),
                  Text(listOfFruits[0].price.toString()),
                  Text(ProductList.instaceOfProductList
                      .getQuantity(listOfFruits[0])
                      .toString()),
                ],
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      ProductList.instaceOfProductList
                          .addItems(listOfFruits[0]);
                    });
                  },
                  icon: const Icon(Icons.add)),
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      ProductList.instaceOfProductList
                          .removeItems(listOfFruits[1]);
                    });
                  },
                  icon: const Icon(Icons.remove)),
              Column(
                children: [
                  Text(listOfFruits[1].name),
                  Text(listOfFruits[1].price.toString()),
                  Text(ProductList.instaceOfProductList
                      .getQuantity(listOfFruits[1])
                      .toString()),
                ],
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      ProductList.instaceOfProductList
                          .addItems(listOfFruits[1]);
                    });
                  },
                  icon: const Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }
}
