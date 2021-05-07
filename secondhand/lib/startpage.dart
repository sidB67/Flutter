import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  String email;
  String pass;
  final _auth= FirebaseAuth.instance;
  bool showSpinner=false;
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xff283149
        ),
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 50.0, 0.0, 0.0),
                      child: Text('Second-Hand',
                          style: TextStyle(
                              fontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:150),
                      child: Center(child: Image.asset('images/logo.png')),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                      child: Text('',
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green)),
                    )
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        onChanged: (value){
                          email=value;
                        },
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            labelText: 'Email Id',
                            labelStyle: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.green))),
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        style: TextStyle(
                          color: Colors.white
                        ),
                        onChanged: (value){
                          pass=value;
                        },
                        decoration: InputDecoration(
            
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue))),
                        obscureText: true,
                      ),
                      SizedBox(height: 5.0),
                      Container(
                        alignment: Alignment(1.0, 1.0),
                        padding: EdgeInsets.only(top: 15.0, left: 20.0),
                        child: InkWell(
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                      SizedBox(height: 40.0),
                      GestureDetector(
                        onTap: ()async{
                          setState(() {
                            showSpinner=true;
                          });
                           try{
                        final user = await _auth.signInWithEmailAndPassword(email: email, password: pass);
                        if(user != null){
                          Navigator.pushNamed(context, 'home');
                          setState(() {
                          showSpinner = false;
                        });
                        }
                        else{
                        setState(() {
                          showSpinner = false;
                        });}
                        }catch(e){print(e);}
                        },
                                            child: Container(
                          height: 50.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Color(0xffBBDFC8),
                            color: Color(0xffBBDFC8),
                            elevation: 7.0,
                            child: GestureDetector(
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
    // Container(
    // height: 50.0,
    // child: Material(
    // borderRadius: BorderRadius.circular(20.0),
    // shadowColor: Color(0xffBBDFC8),
    // color:Color(0xffBBDFC8),
    // elevation: 8.0,
    // child: GestureDetector(
    // onTap: () {},
    // child: Center(
    // child: Text(
    // 'Login with Gmail Account',
    // style: TextStyle(
    // color: Colors.black87,
    // fontWeight: FontWeight.bold,
    // fontFamily: 'Montserrat'),
    // ),
    // ),
    // ),
    // ),
    // ),
                      ]
                   ),
                  ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'New to the App?',
                    style: TextStyle(fontFamily: 'Montserrat',color: Colors.white,),


                  ),
                  SizedBox(width: 8.0),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('signup');
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}