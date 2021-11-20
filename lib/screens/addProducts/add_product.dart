import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:suiiz/screens/category_product/category_product_view.dart';
import 'package:suiiz/shared/component/button_custom.dart';
import 'package:suiiz/shared/component/cart_person.dart';
import 'package:suiiz/shared/component/text_custom.dart';
import 'package:suiiz/shared/component/text_form_field.dart';
import 'package:suiiz/shared/constants/color.dart';
import 'package:suiiz/shared/constants/theme.dart';
import 'package:suiiz/shared/size_confige/size_confige.dart';

class AddProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizedConf().init(context);
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: getProportionateScreenWidth(15.0)),
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(15),
                right: getProportionateScreenWidth(15.0)),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: kBlackColor,
                      ),
                      TextCustom(
                        text: "اضف اعلان جديد",
                      ),
                      InkWell(
                        onTap: () {},
                        child: TextCustom(
                          text: " ابدأ جديد",
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(10),
                        right: getProportionateScreenWidth(10.0)),
                    margin: EdgeInsets.only(
                      top: getProportionateScreenWidth(15.0),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: ButtonCustom(
                                h: 40.0,
                                colorBG: kYellowColor,
                                widget: Center(
                                  child: TextCustom(
                                    text: "الشخصى",
                                    textStyle: textStyle1.copyWith(
                                      fontSize: getProportionateScreenWidth(20.0),
                                      color: kWhiteColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: ButtonCustom(
                                colorBG: kGreyColor,
                                widget: Center(
                                  child: TextCustom(
                                    text: 'المنظمه',
                                    textStyle: textStyle1.copyWith(
                                        fontSize: getProportionateScreenWidth(20.0),
                                        fontWeight: FontWeight.w700,
                                        color: kBlackColor),
                                  ),
                                ),
                                h: 40.0,
                              ),
                            ),


                          ],
                        ),
                      ListView(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        children: [
                          CartPerson(),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: getProportionateScreenWidth(10.0),
                                right: getProportionateScreenWidth(10.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: ButtonCustom(
                                    h: 35.0,
                                    colorBG: kYellowColor,
                                    widget: Center(
                                      child: TextCustom(
                                        text: "كلاهما",
                                        textStyle: textStyle1.copyWith(
                                          fontSize: getProportionateScreenWidth(17.0),
                                          color: kWhiteColor,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: ButtonCustom(
                                    h: 35.0,
                                    colorBG: kYellowColor,
                                    widget: Center(
                                      child: TextCustom(
                                        text: "الهاتف",
                                        textStyle: textStyle1.copyWith(
                                          fontSize: getProportionateScreenWidth(17.0),
                                          color: kWhiteColor,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: ButtonCustom(
                                    colorBG: kGreyColor,
                                    widget: Center(
                                      child: TextCustom(
                                        text: 'الدردشات',
                                        textStyle: textStyle1.copyWith(
                                            fontSize:
                                            getProportionateScreenWidth(17.0),
                                            fontWeight: FontWeight.w700,
                                            color: kBlackColor),
                                      ),
                                    ),
                                    h: 35.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            color: kGreyColor,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(15.0),
                                      right: getProportionateScreenWidth(15.0)),
                                  child: TextCustom(
                                    text: 'اضافه صور',
                                    textStyle: textStyle1.copyWith(
                                      fontSize: getProportionateScreenWidth(18.0),
                                      color: kYellowColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getProportionateScreenWidth(150.0),
                                  child: GridView.count(
                                      crossAxisCount: 4,
                                      physics: NeverScrollableScrollPhysics(),
                                      children: List.generate(8, (index) {
                                        return Center(
                                            child: Container(
                                              height: getProportionateScreenWidth(50.0),
                                              width: getProportionateScreenWidth(50.0),
                                              color: kWhiteColor,
                                              child: DottedBorder(
                                                color: kYellowColor,
                                                dashPattern: [8, 4],
                                                child: Center(
                                                  child: Icon(
                                                    Icons.camera_alt_outlined,
                                                    color: kGreyColor,
                                                  ),
                                                ),
                                              ),
                                            ));
                                      }),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: kGreyColor,
                            padding: EdgeInsets.only(
                                left: getProportionateScreenWidth(15),
                                right: getProportionateScreenWidth(15.0)),
                            margin: EdgeInsets.only(
                              top: getProportionateScreenWidth(15.0),
                            ),
                            child: ListView(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(

                                      child: TextCustom(
                                        text: ' ادخل البيانات',
                                        textStyle: textStyle1.copyWith(
                                          fontSize: getProportionateScreenWidth(18.0),
                                          color: kYellowColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),

                                    const SizedBox(
                                      height: 15,
                                    ),
                                    TextFormCustom(
                                      textLabel: 'اسم الاعلان',
                                      textInputType: TextInputType.text,
                                      textEditingController: TextEditingController(text: ' '),
                                      icon: Icons.circle,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    TextFormCustom(
                                      textLabel: 'اختر الفئه',
                                      textInputType: TextInputType.text,
                                      textEditingController: TextEditingController(text: ' '),
                                      icon: Icons.arrow_forward,
                                      function: ()async{
                                       await Navigator.push(context, MaterialPageRoute(builder:(context) => CategoryProductView(),));
                                      },
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    TextFormCustom(
                                      textLabel: 'سعر ',
                                      textInputType: TextInputType.number,
                                      textEditingController: TextEditingController(text: ' '),
                                      icon: Icons.attach_money_sharp,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    TextFormCustom(
                                      textLabel: 'الوصف ',
                                      textInputType: TextInputType.text,
                                      textEditingController: TextEditingController(text: ' '),
                                      minLine: 5,
                                      icon: Icons.arrow_drop_down_circle_outlined,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
