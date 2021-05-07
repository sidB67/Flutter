import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MlApp extends StatefulWidget {
  @override
  _MlAppState createState() => _MlAppState();
}

class _MlAppState extends State<MlApp> {
  String result='';
  File pickedImage;
  var imageFile;
  bool isImageLoaded = false;
  Future getImage()async{
    var tempStore = await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      pickedImage = File(tempStore.path);
      isImageLoaded = true;
      // result = '';
    });
  }

  Future labelsread() async{
    FirebaseVisionImage myImage = FirebaseVisionImage.fromFile(pickedImage);
    ImageLabeler labeler = FirebaseVision.instance.imageLabeler();
    List labels = await labeler.processImage(myImage);

    for(ImageLabel label in labels){
      final String text = label.text;
      final double conf = label.confidence;
      setState(() {
        result = result + '$text' '- $conf' + '\n';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: labelsread,child: Icon(Icons.check),),
      appBar: AppBar(title: Text('ML App'),actions: [
        RaisedButton(
          color: Colors.black,
          onPressed: getImage ,
          child: Icon(Icons.add_a_photo,color: Colors.white,),
      ),
      ],
      ),
      body: Column(
        children: [
          SizedBox(height:100.0),
          isImageLoaded ? Center(
            child: Container(
              height: 250.0,
              width: 250.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(pickedImage),
                  fit: BoxFit.cover,
                ),
              ),
             
            ),
          ) : Container(),
           SizedBox(height:40.0),
                Text(result),
        ],
        ),
    );
  }
}