import 'package:flutter/material.dart';
import 'package:suiiz/shared/component/button_custom.dart';
import 'package:suiiz/shared/component/text_custom.dart';
import 'package:suiiz/shared/constants/color.dart';
import 'package:suiiz/shared/constants/theme.dart';
import 'package:suiiz/shared/size_confige/size_confige.dart';

class ProductView extends StatelessWidget {

  final List<String>? dataCar= ['للبيع','للأيجار','مطلوب'];

  final String? cat;
  final String? category;
  final String? subcategory;
  ProductView( {required this.category,required this.subcategory, required this.cat});
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
                    SizedBox(height: getProportionateScreenWidth(15.0),),
                    Container(
                      height: 50.0,
                      margin: EdgeInsets.only(bottom: getProportionateScreenWidth(15.0)),
                      child: Row(
                        children: [

                          Expanded(
                            child: ButtonCustom(
                              colorBG: kGreyColor,
                              widget: Center(
                                child: TextCustom(
                                text: 'قطع غيار',
                            ),
                              ),
                            h: 40.0,
                            ),
                          ),
                          SizedBox(width: getProportionateScreenWidth(8.0),),
                          Expanded(
                            child: ButtonCustom(
                              colorBG: kGreyColor,
                              widget: Center(
                                child: TextCustom(
                                text: 'اكسسوارات',
                            ),
                              ),
                            h: 40.0,
                            ),

                          ),
                          SizedBox(width: getProportionateScreenWidth(8.0),),

                          Expanded(
                            child: ButtonCustom(
                              colorBG: kYellowColor,
                              widget: Center(
                                child: TextCustom(
                                  text: 'سيارات',
                                  textStyle: textStyle1.copyWith(
                                    color: kWhiteColor,
                                    fontSize: getProportionateScreenWidth(15.0)
                                  ),
                                ),
                              ),
                              h: 40,),
                          ),
                        ],
                      ),
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      physics: BouncingScrollPhysics(),
                      mainAxisSpacing: getProportionateScreenWidth(5),
                      crossAxisSpacing: getProportionateScreenWidth(5),
                      children:List.generate(dataCar!.length, (index) => InkWell(
                        onTap: (){
                          print("$category\/$subcategory\/$cat");
                          print("${dataCar![index]}");

                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color:index==2? kYellowColor:Colors.black12,width: 2),
                              borderRadius: BorderRadius.all(Radius.circular( getProportionateScreenWidth(10.0)))
                          ),
                          height: getProportionateScreenWidth(100.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(topRight:Radius.circular( getProportionateScreenWidth(10.0)) ,topLeft:Radius.circular( getProportionateScreenWidth(10.0))),
                                child: Image.asset("assets/images/bmw.jpg",),
                              ),
                              Container(
                                color: kGreyColor,
                                padding: EdgeInsets.only(top: 5),
                                child: Center(
                                  child: TextCustom(
                                    text: dataCar![index],
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
      ),
    );
  }
}
