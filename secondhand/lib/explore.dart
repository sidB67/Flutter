import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff283149),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              // height: 62,
              // width: 239,
              padding: EdgeInsets.fromLTRB(31, 23, 90, 0),
              child: Text(
                'Find items for your needs',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'inter'),
              ),
            ),
            SizedBox(height: 25),
            Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom:30),
                            child: Container(
                height: 462,
                width: 298,
                padding: EdgeInsets.fromLTRB(31, 25, 31, 25),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffDBEDF3),
                      Color(0xffD0EFFA),
                      Color(0xffF0E5D8),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SingleChildScrollView(
                  clipBehavior: Clip.antiAlias,
                                  child: Column(children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'product');
                      },
                                          child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                            Image(image: AssetImage('images/mattress.png'),),
                            Padding(
                              padding: const EdgeInsets.only(bottom:24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Single Bed Mattress',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                   Text(
                                    '₹ 1500',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:16),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                            Image(image: AssetImage('images/cycle.png'),),
                            Padding(
                              padding: const EdgeInsets.only(bottom:24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Hero Bicycle',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                   Text(
                                    '₹ 1000',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:16),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                            Image(image: AssetImage('images/lc.png'),),
                            Padding(
                              padding: const EdgeInsets.only(bottom:24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Workshop lab coat',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                   Text(
                                    '₹ 200',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                        ],
                      ),
                    ),
                    Padding(
                    
                      padding: const EdgeInsets.only(top:16),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                            Image(image: AssetImage('images/calc.png'),),
                            Padding(
                              padding: const EdgeInsets.only(bottom:24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Casio 991-ES Calculator',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                   Text(
                                    '₹ 600',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:16),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                            Image(image: AssetImage('images/tlamp.png'),),
                            Padding(
                              padding: const EdgeInsets.only(bottom:24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Table Lamp',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                   Text(
                                    '₹ 300',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:16),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                            Image(image: AssetImage('images/boat.png'),),
                            Padding(
                              padding: const EdgeInsets.only(bottom:24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Boat Headphone',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                   Text(
                                    '₹ 1000',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
                          ),
            ),
          ],
        ),
      ),
    );
  }
}
