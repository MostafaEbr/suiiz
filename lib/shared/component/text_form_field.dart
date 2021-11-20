import 'package:flutter/material.dart';
import 'package:suiiz/shared/constants/color.dart';
import 'package:suiiz/shared/constants/theme.dart';
import 'package:suiiz/shared/size_confige/size_confige.dart';

class TextFormCustom extends StatelessWidget {

  final int? minLine ;
  final String? textLabel ;
  final TextInputType? textInputType ;
  final TextEditingController? textEditingController ;
  final IconData? icon ;
  final Color? color ;
   Function()? function;

  TextFormCustom({this.textLabel,this.textEditingController,this.minLine=1,this.textInputType,required this.icon
    ,this.color=Colors.black54,this.function});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController??TextEditingController(text: " "),
      minLines: minLine!,
      maxLines:6,
      onTap: function,
      keyboardType: textInputType,
      decoration: new InputDecoration(
          suffixIcon: Icon(icon,color: color!,),
          contentPadding: EdgeInsets.only(left:getProportionateScreenWidth(10.0),right:
          getProportionateScreenWidth(10.0)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: kYellowColor, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color:kYellowColor, width: 1.0),
          ),
          hintText: '',
          labelText: textLabel ,
          enabled: true,

          labelStyle: textStyle1.copyWith(
              color: kYellowColor
          )
      ),
    );
  }
}

