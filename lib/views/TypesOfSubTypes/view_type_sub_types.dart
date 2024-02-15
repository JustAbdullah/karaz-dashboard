import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:karaz_dashboard/controllers/home_controller.dart';
import 'package:karaz_dashboard/views/menu/menu.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';
import '../../core/constant/images_path.dart';
import '../../customWidgets/custom_container.dart';
import '../../customWidgets/custom_container_api.dart';
import '../../customWidgets/custom_padding.dart';
import '../../customWidgets/custom_text.dart';
import '../../responsive_screen.dart';
import 'add_types_of_sub_type.dart';

class ViewTypeSubTypes extends StatelessWidget {
  const ViewTypeSubTypes({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
        body: Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child:
                  ///////////////////////Row Show Te menu and The Context OF Page,,,,,,,,,,..............

                  Directionality(
                textDirection: TextDirection.rtl,
                child: Row(children: [
                  ResponsiveTheScreen(desktop: Menu(), mobile: Menu()),
                  SizedBox(
                    width: 00.w,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    alignment: Alignment.topCenter,
                    child: ////////////////////////Single Of Show All Context Of Page.................../////////

                        SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: PaddingCustom(
                                theTop: 10,
                                theRight: 00,
                                child: TextCustom(
                                    height: 1.5,
                                    theText: "واجهة تفرعات  الخدمات الفرعية",
                                    fontSizeWidth: 8.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontColor: AppColors.yellowColor),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: PaddingCustom(
                                theTop: 5,
                                theRight: 0,
                                child: TextCustom(
                                    height: 1.5,
                                    theText:
                                        "معلومات واحصائيات شاملة عن تفرعات الخدمات الفرعية المتوفرة في قاعدة البيانات",
                                    fontSizeWidth: 4.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontColor: AppColors.balckColorTypeThree),
                              ),
                            ),
                            Align(
                                alignment: Alignment.topCenter,
                                child: PaddingCustom(
                                    theTop: 15,
                                    theRight: 00,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.75,
                                        height: 470.h,
                                        child: ////////////////////////Single Of Show All DataBase APi Context Of Page.................../////////
                                            SingleChildScrollView(
                                          child: Column(children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 60.h,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 35.w,
                                                      child: TextCustom(
                                                          theText: "المعرف",
                                                          fontSizeWidth: 5.2.sp,
                                                          fontFamily:
                                                              AppTextStyles
                                                                  .Almarai,
                                                          fontColor: AppColors
                                                              .balckColorTypeThree,
                                                          height: 1.5.h),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 35.w,
                                                      child: TextCustom(
                                                          theText:
                                                              "اسم التفرع بالعربي",
                                                          fontSizeWidth: 5.2.sp,
                                                          fontFamily:
                                                              AppTextStyles
                                                                  .Almarai,
                                                          fontColor: AppColors
                                                              .balckColorTypeThree,
                                                          height: 1.5.h),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 35.w,
                                                      child: TextCustom(
                                                          theText:
                                                              "اسم التفرع  بالانجليزي",
                                                          fontSizeWidth: 5.2.sp,
                                                          fontFamily:
                                                              AppTextStyles
                                                                  .Almarai,
                                                          fontColor: AppColors
                                                              .balckColorTypeThree,
                                                          height: 1.5.h),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 35.w,
                                                      child: TextCustom(
                                                          theText: "سعر الخدمة",
                                                          fontSizeWidth: 5.2.sp,
                                                          fontFamily:
                                                              AppTextStyles
                                                                  .Almarai,
                                                          fontColor: AppColors
                                                              .balckColorTypeThree,
                                                          height: 1.5.h),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 35.w,
                                                      child: TextCustom(
                                                          theText:
                                                              "اسم الخدمة الفرعية",
                                                          fontSizeWidth: 5.2.sp,
                                                          fontFamily:
                                                              AppTextStyles
                                                                  .Almarai,
                                                          fontColor: AppColors
                                                              .balckColorTypeThree,
                                                          height: 1.5.h),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 35.w,
                                                      child: TextCustom(
                                                          theText: "التحكم",
                                                          fontSizeWidth: 5.2.sp,
                                                          fontFamily:
                                                              AppTextStyles
                                                                  .Almarai,
                                                          fontColor: AppColors
                                                              .balckColorTypeThree,
                                                          height: 1.5.h),
                                                    ),
                                                  ]),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 0.1.h,
                                              color:
                                                  AppColors.balckColorTypeThree,
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 400.h,
                                              child: FutureBuilder(
                                                  future: homeController
                                                      .getDataTypeSubTypesDatabase(),
                                                  builder: (BuildContext
                                                          context,
                                                      AsyncSnapshot snapshot) {
                                                    if (snapshot.hasData) {
                                                      return ListView.builder(
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount: snapshot
                                                              .data['data']
                                                              .length,
                                                          shrinkWrap: true,
                                                          itemBuilder:
                                                              (context, i) {
                                                            return Column(
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: 80.h,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets.symmetric(
                                                                        horizontal: 10
                                                                            .w,
                                                                        vertical:
                                                                            10.h),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Container(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            width:
                                                                                35.w,
                                                                            child: TextCustom(
                                                                                theText: snapshot.data['data'][i]['type_sub_id'].toString(),
                                                                                fontSizeWidth: 5.2.sp,
                                                                                fontFamily: AppTextStyles.Almarai,
                                                                                fontColor: AppColors.balckColorTypeThree,
                                                                                height: 1.5.h),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                5.w,
                                                                          ),
                                                                          Container(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            width:
                                                                                35.w,
                                                                            child: TextCustom(
                                                                                theText: snapshot.data['data'][i]['name_type_sub'].toString(),
                                                                                fontSizeWidth: 5.2.sp,
                                                                                fontFamily: AppTextStyles.Almarai,
                                                                                fontColor: AppColors.balckColorTypeThree,
                                                                                height: 1.5.h),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                5.w,
                                                                          ),
                                                                          Container(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            width:
                                                                                35.w,
                                                                            child: TextCustom(
                                                                                theText: snapshot.data['data'][i]['name_type_sub_en'].toString(),
                                                                                fontSizeWidth: 5.2.sp,
                                                                                fontFamily: AppTextStyles.Almarai,
                                                                                fontColor: AppColors.balckColorTypeThree,
                                                                                height: 1.5.h),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                5.w,
                                                                          ),
                                                                          Container(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            width:
                                                                                35.w,
                                                                            child: TextCustom(
                                                                                theText: snapshot.data['data'][i]['price_type_sub'].toString(),
                                                                                fontSizeWidth: 5.2.sp,
                                                                                fontFamily: AppTextStyles.Almarai,
                                                                                fontColor: Colors.green,
                                                                                height: 1.5.h),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                5.w,
                                                                          ),
                                                                          Container(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            width:
                                                                                35.w,
                                                                            child: TextCustom(
                                                                                theText: snapshot.data['data'][i]['sub_type_name_ar'].toString(),
                                                                                fontSizeWidth: 5.2.sp,
                                                                                fontFamily: AppTextStyles.Almarai,
                                                                                fontColor: AppColors.balckColorTypeThree,
                                                                                height: 1.5.h),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                5.w,
                                                                          ),
                                                                          InkWell(
                                                                              onTap: () {
                                                                                if (homeController.typeOfAdmin.value != 2) {
                                                                                  homeController.aboutAccessTheAdminMessage.value = true;
                                                                                } else {
                                                                                  homeController.ofIdTypeSubTypeDeleteOrEdit = snapshot.data['data'][i]['type_sub_id'].toString();
                                                                                  ////////////////
                                                                                  homeController.idTypeOFSubType = snapshot.data['data'][i]['type_sub_id'].toString();
                                                                                  homeController.IdSubType = snapshot.data['data'][i]['sub_type_id_key'].toString();
                                                                                  homeController.nameTypeSubTypeAr = snapshot.data['data'][i]['name_type_sub'].toString();
                                                                                  homeController.nameTypeSubTypeEn = snapshot.data['data'][i]['name_type_sub_en'].toString();
                                                                                  homeController.AboutTypeSubTypeAr = snapshot.data['data'][i]['about_type_sub'].toString();
                                                                                  homeController.AboutTypeSubTypeEn = snapshot.data['data'][i]['about_type_sub_en'].toString();
                                                                                  homeController.PriceTypeOfSubType = snapshot.data['data'][i]['price_type_sub'].toString();
                                                                                  homeController.showMore.value = true;
                                                                                }
                                                                              },
                                                                              child: Container(
                                                                                decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(3)),
                                                                                alignment: Alignment.center,
                                                                                width: 35.w,
                                                                                child: TextCustom(theText: "إدارة", fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.whiteColor, height: 1.5.h),
                                                                              )),
                                                                        ]),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 10.h,
                                                                ),
                                                                Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width -
                                                                      20,
                                                                  height: 0.1.h,
                                                                  color: AppColors
                                                                      .balckColorTypeThree,
                                                                ),
                                                              ],
                                                            );
                                                          });
                                                    } else {
                                                      return ListView.builder(
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount: 5,
                                                          shrinkWrap: true,
                                                          itemBuilder:
                                                              (context, i) {
                                                            return Shimmer
                                                                .fromColors(
                                                                    baseColor: Color
                                                                        .fromARGB(
                                                                            31,
                                                                            169,
                                                                            167,
                                                                            167),
                                                                    highlightColor:
                                                                        AppColors
                                                                            .whiteColor,
                                                                    enabled:
                                                                        true,
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              10.h),
                                                                      child:
                                                                          PaddingCustom(
                                                                        theBottom:
                                                                            10,
                                                                        child:
                                                                            ContainerCustom(
                                                                          theBorderRadius:
                                                                              10,
                                                                          colorContainer:
                                                                              AppColors.whiteColor,
                                                                          heigthContainer:
                                                                              130,
                                                                          widthContainer:
                                                                              MediaQuery.sizeOf(context).width,
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Row(
                                                                                  children: [
                                                                                    Column(
                                                                                      children: [
                                                                                        InkWell(
                                                                                          onTap: () {},
                                                                                          child: Image.asset(
                                                                                            "${ImagesPath.logo}",
                                                                                            width: 100,
                                                                                            height: 100,
                                                                                            fit: BoxFit.contain,
                                                                                          ),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          height: 10.h,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 5.w,
                                                                                ),
                                                                                Column(
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: Alignment.topCenter,
                                                                                      child: PaddingCustom(
                                                                                        theTop: 30,
                                                                                        child: TextCustom(
                                                                                          height: 1.5.h,
                                                                                          theText: "يتم التحميل",
                                                                                          fontColor: AppColors.blackColor,
                                                                                          fontFamily: AppTextStyles.Almarai,
                                                                                          fontSizeWidth: 6.sp,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 150.w,
                                                                                      height: 100.h,
                                                                                      child: PaddingCustom(
                                                                                        theTop: 15,
                                                                                        child: Text(
                                                                                          "يتم التحميل",
                                                                                          maxLines: 4,
                                                                                          style: TextStyle(fontSize: 14.sp, height: 1.7.h, color: AppColors.balckColorTypeThree, fontFamily: AppTextStyles.Almarai),
                                                                                          textAlign: TextAlign.center,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                                                                  child: Column(
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: Alignment.topCenter,
                                                                                        child: PaddingCustom(
                                                                                          theTop: 5,
                                                                                          child: ContainerCustomApi(
                                                                                            colorContainer: AppColors.theAppColorBlue,
                                                                                            theBorderRadius: 15,
                                                                                            heigthContainer: 15.h,
                                                                                            child: Padding(
                                                                                              padding: EdgeInsets.symmetric(horizontal: 8.h),
                                                                                              child: Text(
                                                                                                "يتم التحميل",
                                                                                                style: TextStyle(
                                                                                                  color: AppColors.blackColor,
                                                                                                  fontFamily: AppTextStyles.Almarai,
                                                                                                  fontSize: 14.sp,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ));
                                                          });
                                                    }
                                                  }),
                                            ),
                                          ]),
                                        ),
                                      ),
                                      ///////////////End OF COntextOF API DataBase,,,,,,,,,,,,,,,..........
                                    ))),
                            SizedBox(
                              height: 10.h,
                            ),
                            PaddingCustom(
                                theTop: 40,
                                theRight: 0,
                                child: InkWell(
                                  onTap: () {
                                    if (homeController.typeOfAdmin.value != 2) {
                                      homeController.aboutAccessTheAdminMessage
                                          .value = true;
                                    } else {
                                      homeController.isChooseEditTypeSubType =
                                          0;
                                      Get.to(AddTypesOFSubTypeScreenDeskTop());
                                    }
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      width: 190.w,
                                      height: 35.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.yellowColor,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        "إضافة تفرع جديد",
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontSize: 5.sp,
                                        ),
                                      )),
                                )),
                          ]),
                    ),
                  ),
                  ///////////////End OF COntextOF  Page,,,,,,,,,,,,,,,..........
                ]),
              ),
            ),
          ),
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.showMore.value,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black38,
                  ))),
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.showMore.value,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black38,
                  ))),
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.showMore.value,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 100.w,
                      height: 150.h,
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              PaddingCustom(
                                theTop: 00,
                                theRight: 00,
                                child: InkWell(
                                  onTap: () {
                                    controller.showMore.value = false;
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      width: 17.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.redColor,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Text(
                                        "X",
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontSize: 5.sp,
                                        ),
                                      )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: PaddingCustom(
                                  theTop: 30,
                                  theRight: 00,
                                  child: TextCustom(
                                      height: 1.5,
                                      theText: "إدارة وتحكم شاملة لهذا القسم",
                                      fontSizeWidth: 4.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: AppTextStyles.Almarai,
                                      fontColor: AppColors.balckColorTypeThree),
                                ),
                              ),
                              PaddingCustom(
                                theTop: 40,
                                theRight: 0,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        controller.deleteTypeSubType(controller
                                            .ofIdTypeSubTypeDeleteOrEdit
                                            .toString());
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          width: 30.w,
                                          height: 35.h,
                                          decoration: BoxDecoration(
                                            color: AppColors.redColor,
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                          child: Text(
                                            "حذف",
                                            style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontFamily: AppTextStyles.Almarai,
                                              fontSize: 5.sp,
                                            ),
                                          )),
                                    ),
                                    InkWell(
                                        onTap: () {
                                          controller.isChooseEditTypeSubType =
                                              1;
                                          Get.to(
                                              AddTypesOFSubTypeScreenDeskTop());
                                        },
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: 30.w,
                                            height: 35.h,
                                            decoration: BoxDecoration(
                                              color: AppColors.yellowColor,
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                            ),
                                            child: Text(
                                              "تعديل",
                                              style: TextStyle(
                                                color: AppColors.blackColor,
                                                fontFamily:
                                                    AppTextStyles.Almarai,
                                                fontSize: 5.sp,
                                              ),
                                            ))),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ))), ///////////////////Access Right............../////////////////////
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.aboutAccessTheAdminMessage.value,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black38,
                  ))),
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.aboutAccessTheAdminMessage.value,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black38,
                  ))),
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.aboutAccessTheAdminMessage.value,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 100.w,
                      height: 120.h,
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              PaddingCustom(
                                theTop: 00,
                                theRight: 00,
                                child: InkWell(
                                  onTap: () {
                                    controller.aboutAccessTheAdminMessage
                                        .value = false;
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      width: 17.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.redColor,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Text(
                                        "X",
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontSize: 5.sp,
                                        ),
                                      )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: PaddingCustom(
                                  theTop: 40,
                                  theRight: 00,
                                  child: TextCustom(
                                      height: 1.5,
                                      theText:
                                          "المعذرة..لاتمتلك الصلاحيات للقيام بهذة العملية",
                                      fontSizeWidth: 4.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: AppTextStyles.Almarai,
                                      fontColor: AppColors.balckColorTypeThree),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ))),
        ],
      ), ///////////////End OF Menu And  Page,,,,,,,,,,,,,,,..........
    ));
  }
}
