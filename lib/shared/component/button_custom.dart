import 'package:flutter/material.dart';
import 'package:suiiz/shared/size_confige/size_confige.dart';

class ButtonCustom extends StatelessWidget {

  final Color? colorBG ;
  final  widget ;
  final double? h ;

  ButtonCustom({this.widget,this.colorBG,this.h});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(h!),
      decoration: BoxDecoration(
          color: colorBG,
          borderRadius: BorderRadius.only(topLeft:
          Radius.circular(getProportionateScreenWidth(5.0)),
              bottomRight:Radius.circular(getProportionateScreenWidth(5.0))),
      ),
      child: widget,
    );
  }
}

