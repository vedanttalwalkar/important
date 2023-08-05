import 'package:delete_this_one/product_info.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage(this.update, {super.key});
  final ValueChanged update;
  @override
  State<CartPage> createState() => _CartPageState(update);
}

class _CartPageState extends State<CartPage> {
  final ValueChanged update;
  _CartPageState(this.update);
  @override
  Widget build(BuildContext context) {
    final instant = ProductList.instaceOfProductList;
    final instaceOfProductList =
        ProductList.instaceOfProductList.quantityProduct;
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: instaceOfProductList.length,
          itemBuilder: ((context, index) {
            var product = instaceOfProductList.keys.elementAt(index);
            int quantity = instaceOfProductList[product]!;
            return Column(
              children: [
                Text(product.name),
                Text(quantity.toString()),
                IconButton(
                    onPressed: () {
                      setState(() {
                        instant.removeItems(product);
                        update(instaceOfProductList);
                      });
                    },
                    icon: Icon(Icons.remove))
              ],
            );
          })),
    );
  }
}
