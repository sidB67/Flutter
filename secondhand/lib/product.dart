import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff283149),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
              width: double.infinity,
              child:Image(
                image: AssetImage('images/mattress2.png'),
                fit: BoxFit.fill,
              ),
            
            
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 28, 106, 0),
              child: Text(
                'Single Bed Mattress',
                style: TextStyle(
        color:Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(21, 11, 0, 0),
              child: Row(
                children:[
        Icon(Icons.person,
          size: 16,
          color: Colors.white.withOpacity(.8),
        ),
        Text(
          'Posted by Harikrishnan',
          style: TextStyle(
            color: Colors.white.withOpacity(.8),
            fontSize: 13,
            fontWeight:FontWeight.w600,
          ),
        ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 36, 0, 0),
              child: Text(
                'Description',
                style: TextStyle(
        color:Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 22,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 17, 18, 0),
                child: Text(
        '1 year old Sleepwell mattress, new-like condition. Comfortable and soft. Free from bed bugs and mites. Price negotiable. ',
        style: TextStyle(
          color:Colors.white,
          fontSize: 15,
          fontWeight:FontWeight.w600,
          
        ),
        textAlign: TextAlign.justify,
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 29, 0, 0),
              child: Row(
                children: [
        Icon(Icons.phone,color: Colors.white.withOpacity(.8),size: 15,),
        SizedBox(width:15),
        Text(
          '9988112233',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 15
          ),
        )
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.fromLTRB(22, 13, 0, 0),
              child: Row(
                children: [
        Icon(Icons.email,color: Colors.white.withOpacity(.8),size: 15,),
        SizedBox(width:15),
        Text(
          'hari.krishan@hotmail.com',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 15
          ),
        )
                ],
              ),
            ),
             Center(
               child: Padding(
                 padding: const EdgeInsets.only(top: 34),
                 child: Text(
        '₹ 1500',
        style: TextStyle(
          color: Color(0xff5EF445),
          fontWeight:FontWeight.w700,
          fontSize:26,
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