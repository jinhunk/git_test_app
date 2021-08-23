import 'package:flutter/material.dart';

import 'crud.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'crud 테스트',
      home: Crud(),
    );
  }
}
