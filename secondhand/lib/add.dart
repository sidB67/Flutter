import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff283149
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child: ListView(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Add an item for Sale',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 35),
                      )),
                  SizedBox(
                    height: 50,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Container(
                     decoration: BoxDecoration(
                       color:  Color(0xffF0E5D8
                        ),
                        
                     ),
                      height: 40,
                      padding: EdgeInsets.fromLTRB(10, 11, 10, 11),
                      child: Text(
                        'Product name',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                 Container(
                     decoration: BoxDecoration(
                       color:  Color(0xffF0E5D8
                        ),
                       
                     ),
                      height: 40,
                      padding: EdgeInsets.fromLTRB(10, 11, 10, 11),
                      child: Text(
                        'Asking Price',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                   Container(
                     decoration: BoxDecoration(
                       color:  Color(0xffF0E5D8
                        ),
                       
                     ),
                      height: 92,
                      padding: EdgeInsets.fromLTRB(10, 11, 10, 11),
                      child: Text(
                        'Product Desicription',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                        ),
                      )),
                  SizedBox(
                    height: 200,
                  ),
                   Container(
                     decoration: BoxDecoration(
                       color:  Color(0xffF0E5D8
                        ),
                       
                     ),
                      height: 40,
                      padding: EdgeInsets.fromLTRB(10, 11, 10, 11),
                      child: Text(
                        'Contact Number',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                   Container(
                     decoration: BoxDecoration(
                       color:  Color(0xffF0E5D8
                        ),
                       
                     ),
                      height: 40,
                      padding: EdgeInsets.fromLTRB(10, 11, 10, 11),
                      child: Text(
                        "Sellers's Name",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(top:33,left: 118,right: 118),
                        child: Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            // shadowColor: Colors.blueAccent,
                            color: Color(0xffBBDFC8),
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context,'home');
                              },
                              
                              child: Center(
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ),
                          )),
                      ),
                ],
              ),
            )));

  }
}