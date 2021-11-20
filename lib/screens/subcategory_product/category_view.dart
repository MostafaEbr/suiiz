import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suiiz/screens/product/product_view.dart';
import 'package:suiiz/shared/component/button_custom.dart';
import 'package:suiiz/shared/component/cart_category.dart';
import 'package:suiiz/shared/component/text_custom.dart';
import 'package:suiiz/shared/constants/color.dart';
import 'package:suiiz/shared/constants/theme.dart';
import 'package:suiiz/shared/size_confige/size_confige.dart';

class CategoryView extends StatelessWidget {

  final String? cat;
  final String? category;
  CategoryView({required this.category,required this.cat});
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
            child: Container(
              height: h,
              margin: EdgeInsets.only(
                  left: getProportionateScreenWidth(15.0),
                  right: getProportionateScreenWidth(15.0)),
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
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
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                  physics: BouncingScrollPhysics(),
                  mainAxisSpacing: getProportionateScreenWidth(5),
                  crossAxisSpacing: getProportionateScreenWidth(5),
                  children:List.generate(50, (index) => InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ProductView(cat: 'بي ام دبليو',subcategory: cat,category: category);
                      },));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: kGreyColor,width: 2),
                          borderRadius: BorderRadius.all(Radius.circular( getProportionateScreenWidth(10.0)))
                      ),
                      height: getProportionateScreenWidth(100.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(topRight:Radius.circular( getProportionateScreenWidth(10.0)) ,topLeft:Radius.circular( getProportionateScreenWidth(10.0))),
                            child: Image.asset("assets/images/bmw.jpg"),
                          ),
                          Container(
                            color: kGreyColor,
                            padding: EdgeInsets.only(top: 5),
                            child: Center(
                              child: TextCustom(
                                text: 'بى ام دبليو',
                              ),
                            ),
                          ),



                        ],
                      ),
                    ),
                  )),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
