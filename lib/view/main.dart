import 'package:flutter/material.dart';
import 'package:state_management/view/products_page.dart';

import '../service_provider.dart';

void main() {
  runApp(const MyApp());
  setup();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductsPage(title: 'Products'),
    );
  }
}
