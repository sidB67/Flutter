import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var color1 = Color(0xffBBDFC8);
  var color2= Color(0xffBBDFC8);
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff283149),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Second Hand',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 45),
                    )),
                SizedBox(
                  height: 50,
                ),
                Container(
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.center,
                    child: Text(
                      'Need a lab coat for manufacturing process worshop?Or a mattress for your hostel room?\nOr just a scientific calculator?\nThis is your one stop destination for all the stuff you need,but dont wanna buy :p ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:28),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, 'explore');
                      setState(() {
                        color1=Color(0xffF6C882);
                        color2= Color(0xffBBDFC8);
                      });
                    },
                                      child: Container(
                      
                        height: 100,
                        // padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:Center(
                          child: Text(
                            'Explore items in the second hand list',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize:25,
                              fontFamily: 'Merriweather'
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ) ,
                        ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:28),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, 'add');
                       setState(() {
                        color2=Color(0xffF6C882);
                        color1= Color(0xffBBDFC8);
                      });
                    },
                                      child: Container(
                      
                        height: 100,
                        // padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: color2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:Center(
                          child: Text(
                            'Add items to the Second-Hand list',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize:25,
                              fontFamily: 'Merriweather'
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ) ,
                        ),
                  ),
                ),
              ],
            )));
  }
}