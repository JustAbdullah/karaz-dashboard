import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';
import '../../core/constant/images_path.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GetX<HomeController>(
          builder: (controller) => Container(
                color: Color(0xFF171821),
                height: MediaQuery.of(context).size.height,
                width: 40.w,
                child: SingleChildScrollView(
                  child: Column(children: [
                    Column(
                      children: [
                        Image.asset(
                          ImagesPath.logo,
                          width: 30.w,
                        ),
                        Text("كرز",
                            style: TextStyle(
                                color: AppColors.theAppColorBlueWhite,
                                fontFamily: AppTextStyles.Almarai,
                                fontSize: 6.sp,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        if (controller.typeOfAdmin.value != 2) {
                          controller.aboutAccessTheAdminMessage.value = true;
                        } else {
                          controller.GoToAdminScreen();
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 1
                                ? AppColors.theAppColorBlueWhite
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "الأدمن",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        controller.GoToUsersScreen();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 2
                                ? AppColors.theAppColorBlueWhite
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "المستخدمين",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                        onTap: () {
                          controller.GoToMainTypesScreen();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 37.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: controller.countTheMenu.value == 3
                                  ? AppColors.theAppColorBlueWhite
                                  : Color(0xFF171821),
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            "الخدمات الرئيسية",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: AppTextStyles.Almarai,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                        onTap: () {
                          controller.GoToSubTypesScreen();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 37.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: controller.countTheMenu.value == 4
                                  ? AppColors.theAppColorBlueWhite
                                  : Color(0xFF171821),
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            "الخدمات الفرعية",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: AppTextStyles.Almarai,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                        onTap: () {
                          controller.GoToTypeSubTypesScreen();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 37.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: controller.countTheMenu.value == 5
                                  ? AppColors.theAppColorBlueWhite
                                  : Color(0xFF171821),
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            "تفرعات الخدمة",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: AppTextStyles.Almarai,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                        onTap: () {
                          if (controller.typeOfAdmin.value != 2) {
                            controller.aboutAccessTheAdminMessage.value = true;
                          } else {
                            controller.GoToNotificationsScreen();
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 37.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: controller.countTheMenu.value == 6
                                  ? AppColors.theAppColorBlueWhite
                                  : Color(0xFF171821),
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            "الإشعارات",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: AppTextStyles.Almarai,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                        onTap: () {
                          if (controller.typeOfAdmin.value != 2) {
                            controller.aboutAccessTheAdminMessage.value = true;
                          } else {
                            controller.GoToNotificationsServiceManScreen();
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 37.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: controller.countTheMenu.value == 14
                                  ? AppColors.theAppColorBlueWhite
                                  : Color(0xFF171821),
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            "إشعارات الفنيين",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: AppTextStyles.Almarai,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                        onTap: () {
                          controller.GoToNoticeScreen();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 37.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: controller.countTheMenu.value == 7
                                  ? AppColors.theAppColorBlueWhite
                                  : Color(0xFF171821),
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            "الملاحظات",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: AppTextStyles.Almarai,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        if (controller.typeOfAdmin.value != 2) {
                          controller.aboutAccessTheAdminMessage.value = true;
                        } else {
                          controller.GoToServicesMan();
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 8
                                ? AppColors.theAppColorBlueWhite
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "الفنيين",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        controller.GoToOrders();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 9
                                ? AppColors.theAppColorBlueWhite
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "الطلبيات",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        controller.GoToWallte();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 10
                                ? AppColors.theAppColorBlueWhite
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "المحفظة",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        controller.GoToServicesNot();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 11
                                ? AppColors.theAppColorBlueWhite
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "ملاحظات-الفني",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        controller.GoToInv();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 12
                                ? AppColors.theAppColorBlueWhite
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "الفواتير",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        controller.GoToAccountsOrders();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 13
                                ? AppColors.theAppColorBlueWhite
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "طلبات الانضمام",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                  ]),
                ),
              )),
    );
  }
}
