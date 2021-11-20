import 'package:flutter/material.dart';
import 'package:suiiz/shared/component/text_custom.dart';
import 'package:suiiz/shared/constants/color.dart';
import 'package:suiiz/shared/constants/theme.dart';
import 'package:suiiz/shared/size_confige/size_confige.dart';

class CartPerson extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(150.0),
      margin: EdgeInsets.only(top:  getProportionateScreenWidth(15.0)),
      padding: EdgeInsets.only(right:15.0 ,left: 15.0),
      decoration: BoxDecoration(
          color: kGreyColor,
          borderRadius: BorderRadius.all(Radius.circular(getProportionateScreenWidth(5)))
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextCustom(
                    text: 'البيانات الشخصيه',
                    textStyle: textStyle1.copyWith(
                        color: kBlackColor ,
                        fontWeight: FontWeight.w500,
                        fontSize: getProportionateScreenWidth(20.0)
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: getProportionateScreenWidth(100.0),
                        width: getProportionateScreenWidth(100.0),
                        child: ClipRRect(
                          borderRadius:BorderRadius.all(Radius.circular( getProportionateScreenWidth(8.0))),
                          child: Image.asset("assets/images/photo.jpg"),
                        ),
                      ),
                      const SizedBox(width: 10.0,),

                      Container(
                        height: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextCustom(
                              text: 'Mostafa ibrahem',
                              textStyle: textStyle1.copyWith(
                                  color: kBlackColor ,
                                  fontWeight: FontWeight.w400 ,
                                  fontSize: getProportionateScreenWidth(15)
                              ),
                            ),
                            const SizedBox(width: 15.0,),
                            TextCustom(
                              text: '01126936914',
                              textStyle: textStyle1.copyWith(
                                  color: kBlackColor,
                                  fontWeight: FontWeight.w300 ,
                                  fontSize: getProportionateScreenWidth(15)
                              ),
                            ),
                          ],
                        ),
                      ),



                    ],
                  ),


                ],
              ),
              Icon(Icons.edit_outlined,color: Colors.indigo,),

            ],
          ),
        ],
      ),
    )
    ;
  }
}

