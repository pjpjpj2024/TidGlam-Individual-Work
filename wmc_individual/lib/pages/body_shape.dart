import 'package:flutter/material.dart';

class BodyShapePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Pear Body Shape',
          style: TextStyle(
            fontFamily: 'MyFont',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: BackButton(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            

            Center(
              child: Stack(
                clipBehavior: Clip.none, 
                children: [

                    Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset('assets/images/pearbodyshape.png', width: 250),
                    ),

                  Positioned(
                    top: 50, 
                    left: 200, 
                    child: Container(
                      width: 160,
                      padding: EdgeInsets.all(8),
                      color: Colors.pink[50],
                      child: Text(
                        'The pear body shape is characterised by large hips which are wider than the bust and shoulders. This makes the body appear like a pear shape',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontFamily: 'MyFont', fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: Text(
                'Other characteristics of this body shape are a defined waist, and proportionately slim arms and shoulders.\n'
                'Read if you are concerned about:\n'
                '- Wide hips\n'
                '- Narrow shoulders\n'
                '- Small bust',
                style: TextStyle(fontSize: 14, fontFamily: 'MyFont'),
              ),
            ),
            SizedBox(height: 16),

            Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/upperbody.png', width: 200),
                    SizedBox(height: 8),
                    SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 160,
                        child: Text(
                          'The pear body shape is heavier on the bottom which creates an imbalance with the upper half of the body. '
                          'The key to dressing this body shape is to take attention away from the wider hips and to draw it towards the upper body and defined waist instead.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontFamily: 'MyFont', fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Center(
              child: Image.asset('assets/images/necklines.png', width: 375),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
