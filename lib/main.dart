//import 'package:delete_this_one/cart_page.dart';
import 'package:delete_this_one/display_product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DisplayProduct(),
    );
  }
}
