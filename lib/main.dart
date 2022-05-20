import 'package:flutter/material.dart';

import 'src/pages/zapatos_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shoes App',
        home: ZapatosPage());
  }
}
