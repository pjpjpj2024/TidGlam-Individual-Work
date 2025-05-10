import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../models/product.dart';


class ProductRecommendationPage extends StatefulWidget {
  @override
  _ProductRecommendationPageState createState() =>
      _ProductRecommendationPageState();
}

class _ProductRecommendationPageState extends State<ProductRecommendationPage> {
  List<Product> products = [
    Product(
      name: 'Fresh EOS Deep Hydration Face Cream',
      description:
          'Our best-selling hyaluronic acid moisturizer that delivers 72-hour deep hydration.',
      price: 1450.00,
      image: 'assets/images/fresh.png',
    ),
    Product(
      name: 'Cerave Moisturizing Hydration Cream',
      description:
          'Our Moisturizing Cream with ceramides provides lasting hydration and helps maintain the skin barrier.',
      price: 320.00,
      image: 'assets/images/cerave.png',
    ),
    Product(
      name: 'Srichand Skin Moisture Burst Gel Cream',
      description:
          'A fresh gel cream that hydrates and nourishes skin while maintaining moisture for up to 12 hours.',
      price: 150.00,
      image: 'assets/images/srichan.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Product Recommendation',
              style: TextStyle(
                fontFamily: 'MyFont',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Dry Skin',
              style: TextStyle(
                fontFamily: 'MyFont',
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFFCDD4FF),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFCDD4FF),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black26),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search',
                    style: TextStyle(
                      fontFamily: 'MyFont',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    width: 20,
                    height: 20,
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Pushes items to far edges
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Aligns vertically center
              children: [
                // Sort by section
                Row(
                  children: [
                    Text('Sort by Newest'),
                    IconButton(
                      icon: Icon(Icons.arrow_drop_down),
                      onPressed: () {
                        // Handle sort action
                      },
                    ),
                  ],
                ),
                // Filter icon on the right
                SvgPicture.asset(
                  'assets/icons/filter.svg',
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.all(16),
              itemCount: products.length,
              separatorBuilder: (context, index) => SizedBox(height: 16),
              itemBuilder: (context, index) {
                return buildProductItem(products[index]);
              },
            ),
          ),
        ],
      ),


      
    );
  }

  Widget buildProductItem(Product product) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFCDD4FF),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            product.image,
            width: 80,
            height: 80,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontFamily: 'MyFont',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  product.description,
                  style: TextStyle(
                    fontFamily: 'MyFont',
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/amazon.svg',
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(width: 8),
                    SvgPicture.asset(
                      'assets/icons/lazada.svg',
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(width: 8),
                    SvgPicture.asset(
                      'assets/icons/shopee.svg',
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  product.isFavorited ? Icons.favorite : Icons.favorite_border,
                  color: product.isFavorited ? Colors.red : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    product.isFavorited = !product.isFavorited;
                  });
                },
              ),
              Text(
                '฿ ${product.price.toStringAsFixed(2)}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
