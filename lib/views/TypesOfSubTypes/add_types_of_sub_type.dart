import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../controllers/home_controller.dart';
import '../../../core/constant/app_text_styles.dart';
import '../../../core/constant/appcolors.dart';
import '../../../core/constant/images_path.dart';
import '../../../customWidgets/custom_container.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../customWidgets/custom_container_api.dart';
import '../../../customWidgets/custom_padding.dart';
import '../../../customWidgets/custom_text.dart';
import '../../responsive_screen.dart';
import '../chooseFromAPi/list_of_types_sub_types.dart';
import '../menu/menu.dart';

class AddTypesOFSubTypeScreenDeskTop extends StatefulWidget {
  const AddTypesOFSubTypeScreenDeskTop({super.key});

  @override
  State<AddTypesOFSubTypeScreenDeskTop> createState() =>
      _AddTypesOFSubTypeScreenDeskTopState();
}

class _AddTypesOFSubTypeScreenDeskTopState
    extends State<AddTypesOFSubTypeScreenDeskTop> {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
          child: Directionality(
              textDirection: TextDirection.rtl,
              child: Stack(
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    ResponsiveTheScreen(desktop: Menu(), mobile: Menu()),
                    SingleChildScrollView(
                        child: Container(
                      width: 300.w,
                      child: PaddingCustom(
                        theBottom: 20.h,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Column(children: [
                            SizedBox(
                              height: 40.h,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: TextCustom(
                                  height: 1.5.h,
                                  theText:
                                      "صفحة إضافة-تعديل تفرعات الخدمة الفرعية ",
                                  fontSizeWidth: 7.sp,
                                  fontFamily: AppTextStyles.Almarai,
                                  fontColor: AppColors.blackColor),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 50.w),
                                child: Text(
                                  "لطفًا قم بإدخال البيانات لإضافة-تعديل التفرعات الخدمات  في كرز",
                                  style: TextStyle(
                                      height: 1.5.h,
                                      fontSize: 5.sp,
                                      fontFamily: AppTextStyles.Almarai,
                                      color: AppColors.balckColorTypeThree),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 17.h,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Material(
                                  elevation: 4,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: TextFormField(
                                      onChanged: (value) {
                                        homeController.nameOFTypeOfSubType =
                                            value;
                                        homeController.nameTypeSubTypeAr =
                                            value.toString();
                                      },
                                      onSaved: (newValue) {
                                        homeController.nameOFTypeOfSubType =
                                            newValue.toString();
                                        homeController.nameTypeSubTypeAr =
                                            newValue.toString();
                                      },
                                      controller: homeController.controllerOne,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          hintText: 'اسم التفرع بالعربي',
                                          isDense: true, // important line
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10,
                                              10,
                                              10,
                                              0), // control your hints text size
                                          hintStyle: TextStyle(
                                              fontFamily: AppTextStyles.Almarai,
                                              letterSpacing: 2,
                                              color: AppColors.theAppColorBlue,
                                              fontWeight: FontWeight.bold),
                                          fillColor: Colors.white30,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide.none)),
                                      maxLines: 2,
                                      minLines: 2,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 17.h,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Material(
                                  elevation: 4,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: TextFormField(
                                      controller: homeController.controllerTwo,
                                      onChanged: (value) {
                                        homeController.nameOFTypeOfSubTypeEn =
                                            value;
                                        homeController.nameTypeSubTypeEn =
                                            value;
                                      },
                                      onSaved: (newValue) {
                                        homeController.nameOFTypeOfSubTypeEn =
                                            newValue.toString();
                                        homeController.nameTypeSubTypeEn =
                                            newValue.toString();
                                      },
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          hintText: 'اسم التفرع بالانجليزي',
                                          isDense: true, // important line
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10,
                                              10,
                                              10,
                                              0), // control your hints text size
                                          hintStyle: TextStyle(
                                              fontFamily: AppTextStyles.Almarai,
                                              letterSpacing: 2,
                                              color: AppColors.theAppColorBlue,
                                              fontWeight: FontWeight.bold),
                                          fillColor: Colors.white30,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide.none)),
                                      maxLines: 15,
                                      minLines: 15,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 17.h,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Material(
                                  elevation: 4,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: TextFormField(
                                      controller:
                                          homeController.controllerThree,
                                      onChanged: (value) {
                                        homeController
                                            .DescriptionOFTypeOfSubType = value;
                                        homeController.AboutTypeSubTypeAr =
                                            value;
                                      },
                                      onSaved: (newValue) {
                                        homeController
                                                .DescriptionOFTypeOfSubType =
                                            newValue.toString();
                                        homeController.AboutTypeSubTypeAr =
                                            newValue.toString();
                                      },
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          hintText: 'وصف التفرع بالعربي',
                                          isDense: true, // important line
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10,
                                              10,
                                              10,
                                              0), // control your hints text size
                                          hintStyle: TextStyle(
                                              fontFamily: AppTextStyles.Almarai,
                                              letterSpacing: 2,
                                              color: AppColors.theAppColorBlue,
                                              fontWeight: FontWeight.bold),
                                          fillColor: Colors.white30,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide.none)),
                                      maxLines: 15,
                                      minLines: 15,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 17.h,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Material(
                                  elevation: 4,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: TextFormField(
                                      controller: homeController.controllerFour,
                                      onChanged: (value) {
                                        homeController
                                                .DescriptionOFTypeOfSubTypeEn =
                                            value;
                                        homeController.AboutTypeSubTypeEn =
                                            value.toString();
                                      },
                                      onSaved: (newValue) {
                                        homeController
                                                .DescriptionOFTypeOfSubTypeEn =
                                            newValue.toString();
                                        homeController.AboutTypeSubTypeEn =
                                            newValue.toString();
                                      },
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          hintText: 'وصف التفرع بالانجليزي',
                                          isDense: true, // important line
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10,
                                              10,
                                              10,
                                              0), // control your hints text size
                                          hintStyle: TextStyle(
                                              fontFamily: AppTextStyles.Almarai,
                                              letterSpacing: 2,
                                              color: AppColors.theAppColorBlue,
                                              fontWeight: FontWeight.bold),
                                          fillColor: Colors.white30,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide.none)),
                                      maxLines: 15,
                                      minLines: 15,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 17.h,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Material(
                                  elevation: 4,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: TextFormField(
                                      controller: homeController.controllerFive,
                                      onChanged: (value) {
                                        homeController.PriceOFTypeOfSubType =
                                            value;
                                        homeController.PriceTypeOfSubType =
                                            value;
                                      },
                                      onSaved: (newValue) {
                                        homeController.PriceOFTypeOfSubType =
                                            newValue.toString();
                                        homeController.PriceTypeOfSubType =
                                            newValue.toString();
                                      },
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          hintText: 'سعر تفرع الخدمة ',
                                          isDense: true, // important line
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10,
                                              10,
                                              10,
                                              0), // control your hints text size
                                          hintStyle: TextStyle(
                                              fontFamily: AppTextStyles.Almarai,
                                              letterSpacing: 2,
                                              color: AppColors.theAppColorBlue,
                                              fontWeight: FontWeight.bold),
                                          fillColor: Colors.white30,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide.none)),
                                      maxLines: 15,
                                      minLines: 15,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 17.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextCustom(
                                    height: 1.5.h,
                                    theText: "الخدمة الفرعية:",
                                    fontSizeWidth: 5.sp,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontColor: AppColors.blackColor),
                                InkWell(
                                    onTap: () {
                                      homeController
                                          .showTheListOfSubType.value = true;
                                    },
                                    child: ContainerCustomApi(
                                      colorContainer: AppColors.theAppColorBlue,
                                      theBorderRadius: 15,
                                      heigthContainer: 30.h,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 17.h),
                                        child: GetX<HomeController>(
                                          builder: (Thecontroller) => Text(
                                            Thecontroller.nameOfSubType.value
                                                .toString(),
                                            style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontFamily: AppTextStyles.Almarai,
                                              fontSize: 4.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (homeController
                                            .isChooseEditTypeSubType ==
                                        1) {
                                      homeController.editTypeSubType(
                                          homeController.idTypeOFSubType,
                                          homeController.IdSubType,
                                          homeController.nameTypeSubTypeAr,
                                          homeController.nameTypeSubTypeEn,
                                          homeController.AboutTypeSubTypeAr,
                                          homeController.AboutTypeSubTypeEn,
                                          homeController.PriceTypeOfSubType);
                                    } else {
                                      homeController.addNewTpyeOfSubType(
                                        homeController.idTheSubType.toString(),
                                        homeController.nameOFTypeOfSubType
                                            .toString(),
                                        homeController.nameOFTypeOfSubTypeEn
                                            .toString(),
                                        homeController
                                                .DescriptionOFTypeOfSubType
                                            .toString(),
                                        homeController
                                                .DescriptionOFTypeOfSubTypeEn
                                            .toString(),
                                        homeController.PriceOFTypeOfSubType
                                            .toString(),
                                      );
                                    }
                                  },
                                  child: ContainerCustomApi(
                                    colorContainer: AppColors.yellowColor,
                                    theBorderRadius: 15,
                                    heigthContainer: 33.h,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 47.h),
                                      child: Text(
                                        "إضافة-تعديل التفرع الان",
                                        style: TextStyle(
                                          color: AppColors.balckColorTypeThree,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontSize: 6.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ),
                    )),
                  ]),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.showTheListOfSubType.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.showTheListOfSubType.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.showTheListOfSubType.value,
                          child: Align(
                            alignment: Alignment.center,
                            child: ListOfSubTypes(),
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.loadingImage.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.loadingImage.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.loadingImage.value,
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Lottie.asset(ImagesPath.loading, width: 70.w),
                                Text(
                                  "يتم رفع الصورة أنتظر قليلاً",
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontSize: 4.sp,
                                  ),
                                ),
                              ],
                            ),
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.addToDataBase.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.addToDataBase.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.addToDataBase.value,
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "انتظر قليلاً يتم إضافة-تعديل البيانات",
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontSize: 4.sp,
                                  ),
                                ),
                              ],
                            ),
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.isAddData.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.isAddData.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.isAddData.value,
                          child: PaddingCustom(
                            theTop: 00.h,
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: Text(
                                      "تم إضافة-تعديل البيانات  بنجاح ",
                                      style: TextStyle(
                                          height: 1.7.h,
                                          color: Colors.greenAccent,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontSize: 4.5.sp,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      controller.clearTheData();
                                    },
                                    child: ContainerCustom(
                                      widthContainer: 80,
                                      heigthContainer: 50,
                                      colorContainer: AppColors.yellowColor,
                                      child: TextCustom(
                                          height: 1.5.h,
                                          theText: "الاخفاء",
                                          fontSizeWidth: 5.5.sp,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontColor:
                                              AppColors.balckColorTypeThree),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.isErrorToAddData.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.isErrorToAddData.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.isErrorToAddData.value,
                          child: PaddingCustom(
                            theTop: 0.h,
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Lottie.asset(ImagesPath.loading, width: 70.w),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: Text(
                                      "هنالك مشكلة في عملية الإضافة حاليًا",
                                      style: TextStyle(
                                          height: 1.7.h,
                                          color: Colors.redAccent,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontSize: 4.5.sp,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        controller.clearTheData();
                                      },
                                      child: ContainerCustom(
                                        widthContainer: 80,
                                        heigthContainer: 40,
                                        colorContainer: AppColors.yellowColor,
                                        child: Center(
                                          child: TextCustom(
                                              height: 1.5.h,
                                              theText: "الاخفاء",
                                              fontSizeWidth: 5.5.sp,
                                              fontFamily: AppTextStyles.Almarai,
                                              fontColor: AppColors
                                                  .balckColorTypeThree),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ))),
                ],
              ))),
    );
  }
}
