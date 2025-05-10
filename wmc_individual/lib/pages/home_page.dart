// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('TIdGlam')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () => Navigator.pushNamed(context, '/product_recommendation'),
//               child: Text("Product Recommendation"),
//             ),
//             ElevatedButton(
//               onPressed: () => Navigator.pushNamed(context, '/bodyshape'),
//               child: Text("Body Shape Tips"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Welcome to TidGlam',
          style: TextStyle(
            fontFamily: 'MyFont',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.purple[100],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            // Intro Text
            Text(
              'Discover the best skincare for dry skin and pear body shape tips <3',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'MyFont',
              ),
            ),
            SizedBox(height: 40),

            // Product Recommendation Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/product_recommendation');
              },
              child: Text(
                'View Product Recommendations',
                style: TextStyle(
                  fontFamily: 'MyFont',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 50),

            // Body Shape Tips Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[100],
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/bodyshape');
              },
              child: Text(
                'View Body Shape Tips',
                style: TextStyle(
                  fontFamily: 'MyFont',
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
