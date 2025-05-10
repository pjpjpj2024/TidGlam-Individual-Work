import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/product_recommendation.dart';
import 'pages/body_shape.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skincare & Body Shape App',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomePage(),  // << Set starting page
      routes: {
        '/product_recommendation': (context) => ProductRecommendationPage(),
        '/bodyshape': (context) => BodyShapePage(),
      },
    );
  }
}
