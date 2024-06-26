//import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:math';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:karaz_dashboard/views/AdminView/admin_view.dart';
import 'package:karaz_dashboard/views/MainTypes/view_main_types.dart';
import 'package:karaz_dashboard/views/NotificationsServiceMan/notificationserviceman.dart';
import 'package:karaz_dashboard/views/SubTypes/view_sub_types.dart';

import '../core/services/appservices.dart';
import '../linksapi.dart';
// ignore: library_prefixes

import '../core/class/class/crud.dart';
import 'package:path/path.dart' as Path;
import 'dart:io';

import '../views/Accounts/account_services_man.dart';
import '../views/InvVeiw/inv_view.dart';
import '../views/Notice/notice_view.dart';
import '../views/NoticeServicesMan/notice_view_services.dart';
import '../views/Notifications/notifications.dart';
import '../views/OrdersView/orders_view.dart';
import '../views/ServicesMan/view_services_man.dart';
import '../views/TypesOfSubTypes/view_type_sub_types.dart';
import '../views/UsersScreen/view_users.dart';
import '../views/WalletView/view_wallte.dart';

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

  getDataNoticeDatabaseServices() async {
    var response =
        await crud.postRequest(AppLinksApi.getNoticeDataServices, {});

    if (response['status'] == "success") {
    } else {}
    return response;
  }

  getDataInv() async {
    var response = await crud.postRequest(AppLinksApi.getInv, {});

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
    showMore.value = false;
    Get.to(ViewAdmin());
    searchingClearWhenMove();
    countTheMenu.value = 1;
  }

  GoToUsersScreen() {
    showMore.value = false;
    Get.to(ViewUsers());
    searchingClearWhenMove();
    countTheMenu.value = 2;
  }

  GoToMainTypesScreen() {
    showMore.value = false;
    Get.to(ViewMainTypes());
    searchingClearWhenMove();
    countTheMenu.value = 3;
  }

  GoToSubTypesScreen() {
    showMore.value = false;
    Get.to(ViewSubTypes());
    searchingClearWhenMove();
    countTheMenu.value = 4;
  }

  GoToTypeSubTypesScreen() {
    showMore.value = false;
    Get.to(ViewTypeSubTypes());
    searchingClearWhenMove();
    countTheMenu.value = 5;
  }

  GoToNotificationsScreen() {
    showMore.value = false;
    searchingClearWhenMove();
    Get.to(Notifications());

    countTheMenu.value = 6;
  }

  GoToNotificationsServiceManScreen() {
    showMore.value = false;
    searchingClearWhenMove();
    Get.to(NotificationsServiceMan());

    countTheMenu.value = 14;
  }

  GoToNoticeScreen() {
    showMore.value = false;
    searchingClearWhenMove();
    Get.to(NoticeView());

    countTheMenu.value = 7;
  }

  GoToServicesMan() {
    showMore.value = false;
    searchingClearWhenMove();
    Get.to(ViewServicesMan());

    countTheMenu.value = 8;
  }

  GoToOrders() {
    showMore.value = false;
    searchingClearWhenMove();
    Get.to(OrdersView());

    countTheMenu.value = 9;
  }

  GoToWallte() {
    showMore.value = false;
    Get.to(ViewWallteSericesMan());
    searchingClearWhenMove();
    countTheMenu.value = 10;
  }

  GoToServicesNot() {
    showMore.value = false;
    Get.to(NoticeViewServiecs());
    searchingClearWhenMove();
    countTheMenu.value = 11;
  }

  GoToInv() {
    showMore.value = false;
    searchingClearWhenMove();
    Get.to(InvViewServiecs());

    countTheMenu.value = 12;
  }

  GoToAccountsOrders() {
    showMore.value = false;
    searchingClearWhenMove();
    Get.to(ViewServicesManAccounts());

    countTheMenu.value = 13;
  }

  RxBool showMore = false.obs;

///////Send Notifiction ................////////////

  String titleNo = "";
  String bodyNo = "";
  /////////////////Users///////////////////////
  sendNo(String title, String thebody) async {
    var headersList = {
      'Accept': '*/*',
      'User-Agent': 'Thunder Client (https://www.thunderclient.com)',
      'Content-Type': 'application/json',
      'Authorization':
          'key=AAAArU8I4-E:APA91bGs5sdAa0TlqWRB9k7WKFlbISZ3mUwuNRHv7fW87aI1QtZW3Pd6Rc3zlW5O0aLB56bl8nK82h7EtaitBcjTQLXDFSFDTmDEK4kPCaKv75mRwi_GVtc812cahbRWyJzmVLoFVfz2'
    };
    var url = Uri.parse('https://fcm.googleapis.com/fcm/send');

    var body = {
      "to": "/topics/all",
      "notification": {
        "title": title,
        "body": thebody,
        "sound": "default",
        "image":
            "https://firebasestorage.googleapis.com/v0/b/jalai-45565.appspot.com/o/logo.png?alt=media&token=4c593126-a27b-4449-bf32-7fd37f1a9b47"
      },
      "data": {
        "message": "Offer!",
        "image_url":
            "https://firebasestorage.googleapis.com/v0/b/jalai-45565.appspot.com/o/logo.png?alt=media&token=4c593126-a27b-4449-bf32-7fd37f1a9b47",
        "image":
            "https://firebasestorage.googleapis.com/v0/b/jalai-45565.appspot.com/o/logo.png?alt=media&token=4c593126-a27b-4449-bf32-7fd37f1a9b47"
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

/////////////////ServiceMan///////////////////////
  sendServiceMan(String title, String thebody) async {
    var headersList = {
      'Accept': '*/*',
      'User-Agent': 'Thunder Client (https://www.thunderclient.com)',
      'Content-Type': 'application/json',
      'Authorization':
          'key=AAAAoyZHY34:APA91bHaaNAwPqBbEcsz1j6oWmTgSshok3wPkYk5gzroZZ4cv7JySv0R97Tkhhk6oZddJ-6r1oUKvD0NWEExxKf0800PusowxOh3CSDtWKEfZWn0UEbtMF171Iy7145aFaJxR4fd2aan'
    };
    var url = Uri.parse('https://fcm.googleapis.com/fcm/send');

    var body = {
      "to": "/topics/all",
      "notification": {
        "title": title,
        "body": thebody,
        "sound": "default",
        "image":
            "https://firebasestorage.googleapis.com/v0/b/jalai-45565.appspot.com/o/logo.png?alt=media&token=4c593126-a27b-4449-bf32-7fd37f1a9b47"
      },
      "data": {
        "message": "Offer!",
        "image_url":
            "https://firebasestorage.googleapis.com/v0/b/jalai-45565.appspot.com/o/logo.png?alt=media&token=4c593126-a27b-4449-bf32-7fd37f1a9b47",
        "image":
            "https://firebasestorage.googleapis.com/v0/b/jalai-45565.appspot.com/o/logo.png?alt=media&token=4c593126-a27b-4449-bf32-7fd37f1a9b47"
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

  upnew(File? mfile) async {
    // ignore: unused_local_variable
    var response = await crud.postRequestFile(AppLinksApi.imageNew, {}, mfile!);
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
          iconEditMainType = value;
          iconEditSubType = value;
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

    showMore.value = false;
    Get.offAll(ViewMainTypes());

    return response;
  }

  ////////////Sub Types............/
  String ofIdSubTypeDeleteOrEdit = "";
  int isChooseEditSubType = 0;
  deleteSubType(String idOFSubType) async {
    var response = await crud.postRequest(
        AppLinksApi.deleteSubType, {"sub_type_id": idOFSubType.toString()});
    showMore.value = false;
    Get.offAll(ViewSubTypes());

    return response;
  } //////////// Tpee Of Sub Types............/

  String ofIdTypeSubTypeDeleteOrEdit = "";
  deleteTypeSubType(String idOFTypeSubType) async {
    var response = await crud.postRequest(AppLinksApi.deleteTypeOfSub,
        {"type_sub_id": idOFTypeSubType.toString()});
    showMore.value = false;
    Get.offAll(ViewTypeSubTypes());

    return response;
  }

//////////Delete Admin..........///////////
  deleteAdmin(String idOFAdmin) async {
    var response = await crud.postRequest(
        AppLinksApi.deleteAdmin, {"admin_id": idOFAdmin.toString()});

    showMore.value = false;
    Get.offAll(ViewAdmin());

    return response;
  }

//////////Delete Admin..........///////////
  deleteServiceMan(String idOFMan) async {
    var response = await crud
        .postRequest(AppLinksApi.deleteServiceMan, {"id": idOFMan.toString()});

    showMore.value = false;
    Get.offAll(ViewServicesMan());

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

  /////////////////////////////.............Services Man....................../////////////////////
  getDataServicesMan() async {
    var response = await crud.postRequest(AppLinksApi.getDataSerivcesMan, {});

    return response;
  }

  String nameOfServiceMan = "";
  String idPhoto = "";
  String phoneNumberServiceMan = "";

  addSeriveMan(
      String name, String idPhoto, String phoneNumber, String idType) async {
    Random random = new Random();
    var randomNumber;
    randomNumber = random.nextInt(100000);
    addToDataBase.value = true;
    var response = await crud.postRequest(AppLinksApi.addDataSerivcesMan, {
      "name": name.toString(),
      "phone": phoneNumber.toString(),
      "id_photo": idPhoto.toString(),
      "password": randomNumber.toString(),
      "service_type": idType.toString(),
    });
    Future.delayed(const Duration(seconds: 2), () async {
      addToDataBase.value = false;
      isAddData.value = true;
    });

    return response;
  }

  editWallte(
    String id,
  ) async {
    var response = await crud.postRequest(AppLinksApi.EditWallte, {
      "id": id.toString(),
    });

    return response;
  }

  String newRatio = "";
  editRatio(String id, String ratio) async {
    var response = await crud.postRequest(AppLinksApi.EditRatio, {
      "id": id.toString(),
      "ratio": ratio.toString(),
    });

    showMore.value = false;

    Get.to(ViewWallteSericesMan());

    return response;
  }

  ///////////////////////get The  Orders............................./////////////
  getOrders() async {
    var response = await crud.postRequest(AppLinksApi.getUserOrder, {});

    return response;
  }

  ////////////////////get The Request ServiceMan......../////////////
  getRequestMan() async {
    var response = await crud.postRequest(AppLinksApi.getRequetsSerivceMan, {});

    return response;
  }

  ////////////////Edit The Main Sub And SubType And Service Man................,,,,,,
  /////////Edit MAIN...........////////

  String idMainTypeEdit = "";
  String nameArEditMainType = "";
  String nameEnEditMainType = "";
  String iconEditMainType = "";

  editMainType(String idMainType, String nameArMainType, String nameEnMainType,
      String iconMainType) async {
    addToDataBase.value = true;
    var response = await crud.postRequest(AppLinksApi.EditMainType, {
      "services_main_id": idMainType.toString(),
      "services_main_name_ar": nameArMainType.toString(),
      "services_main_name_en": nameEnMainType.toString(),
      "services_main_icon": iconMainType.toString(),
    });
    Future.delayed(const Duration(seconds: 2), () async {
      addToDataBase.value = false;
      isAddData.value = true;
    });

    return response;
  } /////////Edit Sub...........////////

  String idMainSubTypeEdit = "";
  String idSubTypeEdit = "";
  String nameArEditSubType = "";
  String nameEnEditSubType = "";
  String iconEditSubType = "";
  String sub_type_description_ar = "";
  String sub_type_description_en = "";

  editSubType(String idMainType, String nameArType, String nameEnType,
      String dArType, String dEnType, String iconType, String typeSubID) async {
    addToDataBase.value = true;
    var response = await crud.postRequest(AppLinksApi.EditSubType, {
      "main_type_id": idMainType.toString(),
      "sub_type_name_ar": nameArType.toString(),
      "sub_type_name_en": nameEnType.toString(),
      "sub_type_description_ar": dArType.toString(),
      "sub_type_description_en": dEnType.toString(),
      "sub_type_image": iconType.toString(),
      "sub_type_id": typeSubID.toString(),
    });
    Future.delayed(const Duration(seconds: 2), () async {
      addToDataBase.value = false;
      isAddData.value = true;
    });

    return response;
  }

  //////////### Edit the type Of SubType ...............//////////////////
  int isChooseEditTypeSubType = 0;

  String idTypeOFSubType = "";
  String IdSubType = "";
  String nameTypeSubTypeAr = "";
  String nameTypeSubTypeEn = "";
  String AboutTypeSubTypeAr = "";
  String AboutTypeSubTypeEn = "";
  String PriceTypeOfSubType = "";

  editTypeSubType(String idTypeOfSubType, String idSubType, String nameAr,
      String nameEn, String aboutAr, String aboutEn, String price) async {
    addToDataBase.value = true;
    var response = await crud.postRequest(AppLinksApi.EditTypeOfSubType, {
      "type_sub_id": idTypeOfSubType.toString(),
      "sub_type_id_key": idSubType.toString(),
      "name_type_sub": nameAr.toString(),
      "name_type_sub_en": nameEn.toString(),
      "about_type_sub": aboutAr.toString(),
      "about_type_sub_en": aboutEn.toString(),
      "price_type_sub": price.toString(),
    });
    Future.delayed(const Duration(seconds: 2), () async {
      addToDataBase.value = false;
      isAddData.value = true;
    });

    return response;
  }

  //////////### Edit the Service Man ...............//////////////////
  int isChooseEditServiceMan = 0;

  String idServiceManEdit = "";
  String idSerivceJobEdit = "";
  String nameServiceManEdit = "";
  String idPhotoServiceManEdit = "";
  String numberPhoneEditServiceMan = "";

  editServiceMan(
    String id,
    String name,
    String phone,
    String idPhoto,
    String idTypeJon,
  ) async {
    addToDataBase.value = true;
    var response = await crud.postRequest(AppLinksApi.EditServiceMan, {
      "id": id.toString(),
      "name": name.toString(),
      "phone": phone.toString(),
      "id_photo": idPhoto.toString(),
      "service_type": idTypeJon.toString(),
    });
    Future.delayed(const Duration(seconds: 2), () async {
      addToDataBase.value = false;
      isAddData.value = true;
    });

    return response;
  } //////////### Edit the  Admin ...............//////////////////

  int isChooseEditAdmin = 0;

  String idAdminEdit = "";
  String nameAdminEdit = "";
  String passwordAdminEdit = "";
  int typeOfAccessEditAdmin = 0;

  editAdmin(
    String id,
    String name,
    String password,
    String type,
  ) async {
    addToDataBase.value = true;
    var response = await crud.postRequest(AppLinksApi.EditTheAdmin, {
      "admin_id": id.toString(),
      "admin_name": name.toString(),
      "admin_password": password.toString(),
      "admin_type": type.toString(),
    });
    Future.delayed(const Duration(seconds: 2), () async {
      addToDataBase.value = false;
      isAddData.value = true;
    });

    return response;
  }

  ///////////////////////######################################Searching .............//////////////

  TextEditingController searchingName = TextEditingController();
  String nameSearching = "";
  RxBool isSearchingName = false.obs;
  RxBool TheResultNameSearch = false.obs;
  RxBool isClickTheResult = false.obs;
  RxBool noDataSearching = true.obs;

  searchingClearWhenMove() {
    nameSearching = "";
    searchingName.clear();
    isSearchingName.value = false;
    isClickTheResult.value = false;
    TheResultNameSearch.value = false;
    noDataSearching.value = true;
  }

  searchFlutter() async {
    if (isSearchingName.value == true) {
      if (isClickTheResult.value == true) {
        nameSearching = "";
        searchingName.clear();
        isSearchingName.value = false;
        isClickTheResult.value = false;
        TheResultNameSearch.value = false;
        noDataSearching.value = true;
      } else {
        TheResultNameSearch.value = true;
        isClickTheResult.value = true;
      }
    } else {}
  }

////////////Admin//////////////

  searchinfAdminName(String name) async {
    var response = await crud.postRequest(AppLinksApi.searchingAdminName, {
      'search': name.toString(),
    });
///////
    if (response['status'] == "success") {
      noDataSearching.value = true;
    } else {
      noDataSearching.value = false;
    }

    return response;
  }
  ////////////User//////////////

  searchinfUserName(String name) async {
    var response = await crud.postRequest(AppLinksApi.searchingUserName, {
      'search': name.toString(),
    });
///////
    if (response['status'] == "success") {
      noDataSearching.value = true;
    } else {
      noDataSearching.value = false;
    }

    return response;
  } ////////////Main//////////////

  searchinMainName(String name) async {
    var response = await crud.postRequest(AppLinksApi.searchingMainTypeName, {
      'search': name.toString(),
    });
///////
    if (response['status'] == "success") {
      noDataSearching.value = true;
    } else {
      noDataSearching.value = false;
    }

    return response;
  } ////////////Sub//////////////

  searchinSubName(String name) async {
    var response = await crud.postRequest(AppLinksApi.searchingSubTypeName, {
      'search': name.toString(),
    });
///////
    if (response['status'] == "success") {
      noDataSearching.value = true;
    } else {
      noDataSearching.value = false;
    }

    return response;
  } ////////////TypeSub//////////////

  searchinTypeSubName(String name) async {
    var response =
        await crud.postRequest(AppLinksApi.searchingTypeSubTypeName, {
      'search': name.toString(),
    });
///////
    if (response['status'] == "success") {
      noDataSearching.value = true;
    } else {
      noDataSearching.value = false;
    }

    return response;
  } ////////////Order//////////////

  searchinOrder(String name) async {
    var response = await crud.postRequest(AppLinksApi.searchingOrderNumber, {
      'search': name.toString(),
    });
///////
    if (response['status'] == "success") {
      noDataSearching.value = true;
    } else {
      noDataSearching.value = false;
    }

    return response;
  } ////////////Man Service//////////////

  searchinServiceMan(String name) async {
    var response = await crud.postRequest(AppLinksApi.searchingNameServiceMan, {
      'search': name.toString(),
    });
///////
    if (response['status'] == "success") {
      noDataSearching.value = true;
    } else {
      noDataSearching.value = false;
    }

    return response;
  }

  ///////////////////////////////////////////......Request Services Man ............................../////////////////////

  String nameRquestSeriveMan = "غير معروف";
  String imaRquestSeriveMan = "غير معروف";
  String typeOfWorkRquestSeriveMan = "غير معروف";
  String phoneRquestSeriveMan = "غير معروف";
  String idRquestSeriveMan = "غير معروف";
  String tokenServiceMan = "غير معروف";

  sendNoToServiceManAboutRquest(
      String title, String thebody, String token) async {
    var headersList = {
      'Accept': '*/*',
      'User-Agent': 'Thunder Client (https://www.thunderclient.com)',
      'Content-Type': 'application/json',
      'Authorization':
          'key=AAAAoyZHY34:APA91bHaaNAwPqBbEcsz1j6oWmTgSshok3wPkYk5gzroZZ4cv7JySv0R97Tkhhk6oZddJ-6r1oUKvD0NWEExxKf0800PusowxOh3CSDtWKEfZWn0UEbtMF171Iy7145aFaJxR4fd2aan'
    };
    var url = Uri.parse('https://fcm.googleapis.com/fcm/send');

    var body = {
      "to": token.toString(),
      "notification": {
        "title": title,
        "body": thebody,
        "sound": "default",
        "image":
            "https://firebasestorage.googleapis.com/v0/b/jalai-45565.appspot.com/o/logo.png?alt=media&token=4c593126-a27b-4449-bf32-7fd37f1a9b47"
      },
      "data": {
        "message": "Offer!",
        "image_url":
            "https://firebasestorage.googleapis.com/v0/b/jalai-45565.appspot.com/o/logo.png?alt=media&token=4c593126-a27b-4449-bf32-7fd37f1a9b47",
        "image":
            "https://firebasestorage.googleapis.com/v0/b/jalai-45565.appspot.com/o/logo.png?alt=media&token=4c593126-a27b-4449-bf32-7fd37f1a9b47"
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

  makeAccountready(String id) async {
    var response =
        await crud.postRequest(AppLinksApi.makeAccountReadyServiceMan, {
      'id': id.toString(),
    });
///////
    showMore.value = false;
    Get.to(ViewServicesManAccounts());
    return response;
  }

  deleteAccountServiceMan(String idOFMan) async {
    var response = await crud
        .postRequest(AppLinksApi.deleteServiceMan, {"id": idOFMan.toString()});

    showMore.value = false;
    Get.offAll(ViewServicesManAccounts());

    return response;
  }
}
