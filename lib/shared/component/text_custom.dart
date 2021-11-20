import 'package:flutter/material.dart';
import 'package:suiiz/shared/constants/theme.dart';
import 'package:suiiz/shared/size_confige/size_confige.dart';

class TextCustom extends StatelessWidget {

  final String? text ;
  final TextStyle textStyle ;

  TextCustom({this.text,this.textStyle=textStyle1});


  @override
  Widget build(BuildContext context) {
    return  Text(text!,
      style:textStyle,
    );
  }
}

