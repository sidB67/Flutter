import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  final _auth = FirebaseAuth.instance;
  String email;
  String pass;
  bool showSpinner=false;
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xff283149
        ),
        body: ModalProgressHUD(
                inAsyncCall: showSpinner,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
              Widget>[
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: Center(child: Image.asset('images/signup.png')),
            ),
            Container(
                padding: EdgeInsets.only(top: 50, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      onChanged: (value){
                        email=value;
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          // hintText: 'EMAIL',
                          // hintStyle: ,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue))),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      onChanged: (value){
                        pass=value;
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: 'PASSWORD ',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue))),
                      obscureText: true,
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: 'NAME ',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue))),
                    ),
                    SizedBox(height: 50.0),
                    Container(
                        height: 40.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          // shadowColor: Colors.blueAccent,
                          color: Color(0xffBBDFC8),
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: ()async {
                              setState(() {
                  showSpinner = true;
                });
                try{
                 final newUser = await _auth.createUserWithEmailAndPassword(email: email, password:pass);
                 if(newUser != null){
                   Navigator.pushNamed(context, 'start');
                 }
                 setState(() {
                   showSpinner = false;
                 });
                 }
                 catch(e){print(e);} 
            },
                            
                            child: Center(
                              child: Text(
                                'SIGNUP',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child:

                          Center(
                            child: Text('Go Back',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat')),
                          ),


                        ),
                      ),
                    ),
                  ],
                )),

            //     )
            //   ],
            // )
          ]),
        ));
  }
}
