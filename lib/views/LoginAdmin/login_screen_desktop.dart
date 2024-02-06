import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';
import '../../../core/constant/app_text_styles.dart';
import '../../../core/constant/appcolors.dart';
import '../../../core/constant/images_path.dart';
import '../../../customWidgets/custom_padding.dart';
import '../../../customWidgets/custom_text.dart';
import '../../../customWidgets/custom_visibility.dart';
import '../../../customWidgets/custom_visibility_black_background.dart';
import '../../../customWidgets/search_text_filed.dart';

class LoginScreenDeskTop extends StatelessWidget {
  const LoginScreenDeskTop({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    return Scaffold(
      backgroundColor: Color(0xFF171821),
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Image.asset(
                    ImagesPath.logo,
                    width: 50.w,
                  ),
                  SizedBox(
                    height: 00.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "بيانات الادمن..أدخل البيانات لتسجيل الدخول",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontFamily: AppTextStyles.Almarai,
                        fontSize: 5.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: 120.w,
                    height: 160.h,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 32, 33, 44),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 15.h),
                        child: TextFormFiledCustomSearch(
                          labelData: "الاسم",
                          hintData: "قم رجاءًا بإدخال اسم المستخدم",
                          iconData: Icons.person,
                          controllerData: homeController.controllerOne,
                          value: (value) {
                            homeController.nameAdmin = value.toString();
                            return value;
                          },
                          fillColor: AppColors.whiteColor,
                          hintColor: AppColors.balckColorTypeThree,
                          iconColor: AppColors.balckColorTypeThree,
                          borderSideColor: AppColors.whiteColor,
                          onTap: () {},
                          fontColor: AppColors.balckColorTypeThree,
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          autofillHints: [AutofillHints.name],
                          onChanged: (value) {
                            homeController.nameAdmin = value.toString();
                            return value;
                          },
                          validator: (p0) {
                            return p0;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: TextFormFiledCustomSearch(
                          labelData: "كلمة المرور",
                          hintData: "قم رجاءًا بإدخال كلمة المرور ",
                          iconData: Icons.lock_outline_sharp,
                          controllerData: homeController.controllerTwo,
                          value: (value) {
                            homeController.passwordAdin = value.toString();
                            return value;
                          },
                          fillColor: AppColors.whiteColor,
                          hintColor: AppColors.balckColorTypeThree,
                          iconColor: AppColors.balckColorTypeThree,
                          borderSideColor: AppColors.whiteColor,
                          onTap: () {},
                          fontColor: AppColors.balckColorTypeThree,
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          autofillHints: [AutofillHints.name],
                          onChanged: (value) {
                            homeController.passwordAdin = value.toString();
                            return value;
                          },
                          validator: (p0) {
                            return p0;
                          },
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  InkWell(
                      onTap: () {
                        homeController.loginAdmin(
                            homeController.nameAdmin.toString(),
                            homeController.passwordAdin.toString());
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: 80.w,
                          color: AppColors.yellowColor,
                          child: Center(
                            child: TextCustom(
                                theText: "الدخول  الان",
                                fontSizeWidth: 5.sp,
                                fontFamily: AppTextStyles.Almarai,
                                fontColor: AppColors.balckColorTypeThree,
                                height: 1.5.h),
                          ))),
                ]),
          ),
          GetX<HomeController>(
              builder: (controller) => CustomVisibilityBlackBackGround(
                  thevisible: controller.isErrorAboutLoginAdmin.value,
                  color: Colors.black38)),
          GetX<HomeController>(
              builder: (controller) => CustomVisibilityBlackBackGround(
                  thevisible: controller.isErrorAboutLoginAdmin.value,
                  color: Colors.black38)),
          GetX<HomeController>(
              builder: (controller) => CustomVisibility(
                    thevisible: controller.isErrorAboutLoginAdmin.value,
                    widthContainer: 30.w,
                    heightContainer: 130.h,
                    onTap: () {
                      homeController.controllerOne.clear();
                      homeController.controllerTwo.clear();
                      controller.isErrorAboutLoginAdmin.value = false;
                    },
                    thechildren: [
                      PaddingCustom(
                        theTop: 50,
                        child: Align(
                          alignment: Alignment.center,
                          child: TextCustom(
                              theText: "هنالك خطأ في عملية تسجيل الدخول",
                              fontSizeWidth: 4.sp,
                              fontFamily: AppTextStyles.Almarai,
                              fontColor: AppColors.balckColorTypeThree,
                              height: 1.6),
                        ),
                      ),
                      PaddingCustom(
                          theTop: 10,
                          child: Align(
                              alignment: Alignment.center,
                              child: PaddingCustom(
                                theTop: 00,
                                child: TextCustom(
                                    theText: "قم بالتاكد ثم المحاولة مُجددًا",
                                    fontSizeWidth: 4.sp,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontColor: AppColors.balckColorTypeThree,
                                    height: 1.6),
                              ))),
                    ],
                  )),
        ],
      )),
    );
  }
}
