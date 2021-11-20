import 'package:flutter/material.dart';
import 'package:suiiz/screens/subcategory_product/category_view.dart';
import 'package:suiiz/shared/component/cart_category.dart';
import 'package:suiiz/shared/component/text_custom.dart';
import 'package:suiiz/shared/constants/color.dart';
import 'package:suiiz/shared/constants/theme.dart';
import 'package:suiiz/shared/size_confige/size_confige.dart';

class SubCategory extends StatelessWidget {

  final String? cat;
  SubCategory({required this.cat});
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    SizedConf().init(context);
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Align(
            alignment: Alignment.topRight,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                height: h,
                margin: EdgeInsets.only(
                    left: getProportionateScreenWidth(15.0),
                    right: getProportionateScreenWidth(15.0)),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 15),
                        width: getProportionateScreenWidth(200.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextCustom(
                              text: '$cat',
                              textStyle: textStyle1.copyWith(
                                  color: kBlackColor,
                                  fontSize: getProportionateScreenWidth(18)),
                            ),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) => InkWell(
                            onTap: ()async{
                              await Navigator.push(context, MaterialPageRoute(builder:(context) => CategoryView(cat: 'سيارات',category: cat),));

                            },
                            child: CartCategory(
                              text: 'سيارات',
                              description: ' سيارات قطع غيار اكسسوارات',
                               image: "assets/images/sport-car.png",
                            )),
                        separatorBuilder: (context, index) => SizedBox(height: getProportionateScreenWidth(10.0),), itemCount: 7)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
