//import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:karaz_dashboard/views/AdminView/admin_view.dart';
import 'package:karaz_dashboard/views/MainTypes/view_main_types.dart';
import 'package:karaz_dashboard/views/SubTypes/view_sub_types.dart';

import '../core/services/appservices.dart';
import '../linksapi.dart';
// ignore: library_prefixes

import '../core/class/class/crud.dart';
import 'package:path/path.dart' as Path;
import 'dart:io';

import '../views/Notice/notice_view.dart';
import '../views/Notifications/notifications.dart';
import '../views/TypesOfSubTypes/view_type_sub_types.dart';
import '../views/UsersScreen/view_users.dart';

class HomeController extends GetxController {
  final crud = Crud();
  AppServices appServices = Get.find();

///////////////////Get Data From DataBase ,,,,,,,,,,////////////////////

  getDataUsersFromDatabase() async {
    var response = await crud.postRequest(AppLinksApi.getUsers, {});

    if (response['status'] == "success") {
    } else {}
    return response;
  }

  getDataMainTypesDatabase() async {
    var response = await crud.postRequest(AppLinksApi.getMainTypes, {});

    if (response['status'] == "success") {
    } else {}
    return response;
  }

  getDataSubTypesDatabase() async {
    var response = await crud.postRequest(AppLinksApi.getSubTypes, {});

    if (response['status'] == "success") {
    } else {}
    return response;
  }

  getDataTypeSubTypesDatabase() async {
    var response = await crud.postRequest(AppLinksApi.getTypeOfSubTypes, {});

    if (response['status'] == "success") {
    } else {}
    return response;
  }

  getDataAdminDatabase() async {
    var response = await crud.postRequest(AppLinksApi.getAdminsData, {});

    if (response['status'] == "success") {
    } else {}
    return response;
  }

  getDataNoticeDatabase() async {
    var response = await crud.postRequest(AppLinksApi.getNoticeData, {});

    if (response['status'] == "success") {
    } else {}
    return response;
  }
  //////..............ONInit............................////////////////

  @override
  void onInit() {
    super.onInit();
  }

/////////////////Count Of Menu And show More In Pages,,,,,,,,,,,,,,,.......

  //////////////Nav The Pages........//////////

  RxInt countTheMenu = 2.obs;

  GoToAdminScreen() {
    Get.to(ViewAdmin());
    countTheMenu.value = 1;
  }

  GoToUsersScreen() {
    Get.to(ViewUsers());
    countTheMenu.value = 2;
  }

  GoToMainTypesScreen() {
    Get.to(ViewMainTypes());
    countTheMenu.value = 3;
  }

  GoToSubTypesScreen() {
    Get.to(ViewSubTypes());
    countTheMenu.value = 4;
  }

  GoToTypeSubTypesScreen() {
    Get.to(ViewTypeSubTypes());
    countTheMenu.value = 5;
  }

  GoToNotificationsScreen() {
    Get.to(Notifications());
    countTheMenu.value = 6;
  }

  GoToNoticeScreen() {
    Get.to(NoticeView());
    countTheMenu.value = 7;
  }

  RxBool showMore = false.obs;

///////Send Notifiction................////////////

  String titleNo = "";
  String bodyNo = "";
  sendNo(String title, String thebody) async {
    var headersList = {
      'Accept': '*/*',
      'User-Agent': 'Thunder Client (https://www.thunderclient.com)',
      'Content-Type': 'application/json',
      'Authorization':
          'key=AAAAG1L9LFo:APA91bGxzrfDo94mD1i7BmA9QKK_KkXJy1xSnoe--K5Zo5pwrVjtTcQnSxtH4eirPGfGJRz8eA2aFYB1vl_dT5GXFa3zwA8h4fcq0wQAXmre2Tp35Y2wSuiTPBRKx53D2-8U8sgRzXfm'
    };
    var url = Uri.parse('https://fcm.googleapis.com/fcm/send');

    var body = {
      "to": "/topics/all",
      "notification": {
        "title": title,
        "body": thebody,
        "sound": "default",
        "image":
            "https://firebasestorage.googleapis.com/v0/b/smoe-48557.appspot.com/o/1222.png?alt=media&token=620f0b0c-40c7-4fe8-a0f9-269ff7dd3f8f"
      },
      "data": {
        "message": "Offer!",
        "image_url":
            "https://firebasestorage.googleapis.com/v0/b/smoe-48557.appspot.com/o/1222.png?alt=media&token=620f0b0c-40c7-4fe8-a0f9-269ff7dd3f8f",
        "image":
            "https://firebasestorage.googleapis.com/v0/b/smoe-48557.appspot.com/o/1222.png?alt=media&token=620f0b0c-40c7-4fe8-a0f9-269ff7dd3f8f"
      }
    };

    var req = http.Request('POST', url);
    req.headers.addAll(headersList);
    req.body = json.encode(body);

    var res = await req.send();
    final resBody = await res.stream.bytesToString();

    if (res.statusCode >= 200 && res.statusCode < 300) {
      print(resBody);
    } else {
      print(res.reasonPhrase);
    }
  }

  /////////////////Add .......///////////

  ///////////////////////////////Add Image///////////////////
  upIm(File? mfile) async {
    // ignore: unused_local_variable
    var response =
        await crud.postRequestFile(AppLinksApi.uploadimage, {}, mfile!);
  }

  RxBool addImageWork = false.obs;
  RxBool loadingImage = false.obs;
  File? imagePickerOne;
  String urlImageOne = "0";
  final ImagePicker pickerOne = ImagePicker();
  Uint8List webImageOne = Uint8List(8);
  chooseImageOne() async {
    loadingImage.value = true;
    addImageWork.value = false;
    XFile? image = await pickerOne.pickImage(source: ImageSource.gallery);
    if (kIsWeb) {
      imagePickerOne = File('a');

      var f = await image!.readAsBytes();

      webImageOne = f;

      upIm(imagePickerOne);

      Reference _reference =
          FirebaseStorage.instance.ref().child('${Path.basename(image.path)}');
      await _reference
          .putData(
        await image.readAsBytes(),
        SettableMetadata(contentType: 'image/jpeg'),
      )
          .whenComplete(() async {
        await _reference.getDownloadURL().then((value) {
          addImageWork.value = true;
          addImageWork.value = true;
          urlImageOne = value;
          loadingImage.value = false;
        });
      });
    }
  }
///////////////////........ All Add.......//////////

  TextEditingController controllerOne = TextEditingController();
  TextEditingController controllerTwo = TextEditingController();
  TextEditingController controllerThree = TextEditingController();
  TextEditingController controllerFour = TextEditingController();
  TextEditingController controllerFive = TextEditingController();

  RxBool addToDataBase = false.obs;
  RxBool isAddData = false.obs;
  RxBool isErrorToAddData = false.obs;
  //////MainTypes......./
  RxBool showTheListOfMainType = false.obs;
  RxString nameOfMainType = "لم يتم الاختيار".obs;
  String idTheMainType = "";

  //////SubTypes......./
  RxBool showTheListOfSubType = false.obs;
  RxString nameOfSubType = "لم يتم الاختيار".obs;
  String idTheSubType = "";

  clearTheData() {
    controllerOne.clear();
    controllerTwo.clear();
    controllerThree.clear();
    controllerFour.clear();
    controllerFive.clear();
    addToDataBase.value = false;
    isAddData.value = false;
    isErrorToAddData.value = false;
    addImageWork.value = false;
    loadingImage.value = false;
    urlImageOne = "0";
    typeOFAdmin.value = 0;
    nameOfMainType.value = "لم يتم الاختيار";
    nameOfSubType.value = "لم يتم الاختيار";
  }

/////////////.........MainType.................///////
  String nameOFTypeMain = "";
  String nameEnglishTypeMain = "";
  addNewMainType(String nameArType, String nameTypeEn, String imageUrl) async {
    addToDataBase.value = true;
    var response = await crud.postRequest(AppLinksApi.addMainType, {
      "services_main_name_ar": nameArType.toString(),
      "services_main_name_en": nameTypeEn.toString(),
      "services_main_icon": imageUrl.toString(),
    });
    Future.delayed(const Duration(seconds: 2), () async {
      addToDataBase.value = false;
      isAddData.value = true;
    });

    return response;
  }

  //////////////////......................SubType.............................///////////////
  String nameOFSubMain = "";
  String nameEnglishTypeSub = "";
  String DescriptionSubTypeAr = "";
  String DescriptionSubTypeEn = "";

  addNewSubType(String idTypeMain, String nameArType, String nameTypeEn,
      String DescriptionAr, String DescriptionEn, String imageUrl) async {
    addToDataBase.value = true;
    var response = await crud.postRequest(AppLinksApi.addSubType, {
      "main_type_id": idTypeMain.toString(),
      "sub_type_name_ar": nameArType.toString(),
      "sub_type_name_en": nameTypeEn.toString(),
      "sub_type_description_ar": DescriptionAr.toString(),
      "sub_type_description_en": DescriptionEn.toString(),
      "sub_type_image": imageUrl.toString(),
    });
    Future.delayed(const Duration(seconds: 2), () async {
      addToDataBase.value = false;
      isAddData.value = true;
    });

    return response;
  } //////////////////......................TypeOfSubType.............................///////////////

  String nameOFTypeOfSubType = "";
  String nameOFTypeOfSubTypeEn = "";
  String DescriptionOFTypeOfSubType = "";
  String DescriptionOFTypeOfSubTypeEn = "";
  String PriceOFTypeOfSubType = "";

  addNewTpyeOfSubType(String idTypeSub, String nameArType, String nameTypeEn,
      String DescriptionAr, String DescriptionEn, String price) async {
    addToDataBase.value = true;
    var response = await crud.postRequest(AppLinksApi.addtypeOfSub, {
      "sub_type_id_key": idTypeSub.toString(),
      "name_type_sub": nameArType.toString(),
      "name_type_sub_en": nameTypeEn.toString(),
      "about_type_sub": DescriptionAr.toString(),
      "about_type_sub_en": DescriptionEn.toString(),
      "price_type_sub": price.toString(),
    });
    Future.delayed(const Duration(seconds: 2), () async {
      addToDataBase.value = false;
      isAddData.value = true;
    });

    return response;
  }

  /////////////////////Delete And Edit///////////
  ////////////Main Types............/
  String ofIdMainTypeDeleteOrEdit = "";
  int isChooseEditMainType = 0;
  deleteMainType(String idOFMainType) async {
    var response = await crud.postRequest(AppLinksApi.deleteMainType,
        {"services_main_id": idOFMainType.toString()});
    Get.to(ViewMainTypes());

    return response;
  }

  ////////////Sub Types............/
  String ofIdSubTypeDeleteOrEdit = "";
  int isChooseEditSubType = 0;
  deleteSubType(String idOFSubType) async {
    var response = await crud.postRequest(
        AppLinksApi.deleteSubType, {"sub_type_id": idOFSubType.toString()});
    Get.to(ViewSubTypes());

    return response;
  } //////////// Tpee Of Sub Types............/

  String ofIdTypeSubTypeDeleteOrEdit = "";
  int isChooseEditTypeSubType = 0;
  deleteTypeSubType(String idOFTypeSubType) async {
    var response = await crud.postRequest(AppLinksApi.deleteTypeOfSub,
        {"type_sub_id": idOFTypeSubType.toString()});
    Get.to(ViewTypeSubTypes());

    return response;
  }

  ////////////////////////Login Admin........../////////////
  String nameAdmin = "";
  String passwordAdin = "";
  RxInt typeOfAdmin = 0.obs;
  RxString idOfAdmin = "".obs;
  RxBool waitLoadingAdmin = false.obs;
  RxBool isErrorAboutLoginAdmin = false.obs;

  RxBool aboutAccessTheAdminMessage = false.obs;

  loginAdmin(String name, String password) async {
    waitLoadingAdmin.value = true;
    var response = await crud.postRequest(AppLinksApi.LoginAdmin, {
      'admin_name': name.toString(),
      'admin_password': password.toString(),
    });

    if (response['status'] == "success") {
      typeOfAdmin.value =
          int.parse(response['data'][0]['admin_type'].toString());
      idOfAdmin.value = response['data'][0]['admin_id'].toString();
      waitLoadingAdmin.value = false;
      clearTheData();
      Get.to(ViewUsers());
    } else {
      isErrorAboutLoginAdmin.value = true;
    }
    return response;
  }

/////////////////////////////Add Admin///////////////
  String nameOfNewAdmin = "";
  String passwordOFNewAdmin = "";
  RxInt typeOFAdmin = 0.obs;

  AddAdmin(String name, String password, int type) async {
    var response = await crud.postRequest(AppLinksApi.addAdminNew, {
      'admin_name': nameOfNewAdmin.toString(),
      'admin_password': passwordOFNewAdmin.toString(),
      'admin_type': type.toString(),
    });

    return response;
  }

  //////////////////////////...................Add Notice..................../////////////
  String theNoticeBody = "";
  AddNotice(String theNoticeBody) async {
    var response = await crud.postRequest(AppLinksApi.addNotice, {
      'notice_body': theNoticeBody.toString(),
      'add_by': idOfAdmin.value.toString(),
    });

    return response;
  }
}
