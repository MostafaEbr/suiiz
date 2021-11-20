import 'package:flutter/material.dart';
import 'package:suiiz/shared/component/text_custom.dart';
import 'package:suiiz/shared/constants/color.dart';
import 'package:suiiz/shared/constants/theme.dart';
import 'package:suiiz/shared/size_confige/size_confige.dart';

class CartCategory extends StatelessWidget {

  final String? text ;
  final String? description ;
  final String? image ;

  CartCategory({this.text,this.description,this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(60.0),
      padding: EdgeInsets.only(top: getProportionateScreenWidth(5.0)),
      margin: EdgeInsets.only(top: getProportionateScreenWidth(20.0)),
      decoration: BoxDecoration(
          color: kGreyColor,
          border:
          Border.all(width: 1, color: Colors.grey.shade400),
          borderRadius: BorderRadius.all(Radius.circular(
              getProportionateScreenWidth(10.0)))),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.arrow_back_ios,color: Colors.grey),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextCustom(
                  text: text,

                  textStyle: textStyle1.copyWith(color: kBlackColor,fontSize: getProportionateScreenWidth(15.0),fontWeight: FontWeight.w700),
                ),
                TextCustom(
                  text:description,
                  textStyle: textStyle1.copyWith(
                      color: Colors.grey
                  ),
                )
              ],
            ),
            Container(
                height: getProportionateScreenWidth(60.0),
                width: getProportionateScreenWidth(60.0),
                child: Image.asset(
                  image!,
                  scale: 0.5,
                )),
          ],
        ),
      ),
    )
    ;
  }
}

