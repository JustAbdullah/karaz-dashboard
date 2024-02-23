import 'dart:core';

class AppLinksApi {
  static const uploadimage = "https://larra.xyz/uploadimagetest.php";

  static const path = "https://larra.xyz/php_serivecs/dashboard";
  static const getUsers = "${path}/get_users.php";
  static const getMainTypes = "${path}/get_main_types.php";
  static const getSubTypes = "${path}/get_sub_types.php";
  static const getTypeOfSubTypes = "${path}/get_types_of_sub_type.php";
  static const getUserOrder = "${path}/get_orders_users.php";
  /////////////Add .............////////
  static const addMainType = "${path}/add_dashboard/add_main_type.php";
  static const addSubType = "${path}/add_dashboard/add_sub_type.php";
  static const addtypeOfSub = "${path}/add_dashboard/add_type_of_sub_type.php";

  //////...........Delete......................///////////////////////////
  static const deleteMainType = "${path}/delete_dashboard/delete_main_type.php";
  static const deleteSubType = "${path}/delete_dashboard/delete_sub_type.php";
  static const deleteTypeOfSub =
      "${path}/delete_dashboard/delete_type_of_sub.php";

  static const deleteAdmin = "${path}/delete_dashboard/delete_admin.php";
  static const deleteServiceMan =
      "${path}/delete_dashboard/delete_service_man.php";

  /////////////Admin...............////////////
  static const getAdminsData = "${path}/get_admin.php";
  static const LoginAdmin = "${path}/login_admin.php";
  static const addAdminNew = "${path}/add_dashboard/add_admin.php";

/////////////////////Notice..........////////

  static const getNoticeData = "${path}/get_notice.php";
  static const getNoticeDataServices = "${path}/get_notice_man_services.php";
  static const addNotice = "${path}/add_dashboard/add_notice.php";

  ///////////////////////////////////Services Man
  static const getDataSerivcesMan = "${path}/get_services_man.php";
  static const addDataSerivcesMan =
      "${path}/add_dashboard/add_services_man.php";
  static const EditWallte = "${path}/edit_dashboard/edit_wallte.php";
  static const EditRatio = "${path}/edit_dashboard/edit_ratio.php";
////////////////Edit.....................///////////

  static const EditMainType = "${path}/edit_dashboard/edit_main_type.php";
  static const EditSubType = "${path}/edit_sub_type.php";

  static const EditTypeOfSubType =
      "${path}/edit_dashboard/edit_type_of_sub_type.php";

  static const EditServiceMan = "${path}/edit_dashboard/edit_services_man.php";

  static const EditTheAdmin = "${path}/edit_dashboard/edit_admin.php";

  ///////////////////////////////

  static const imageNew = "https://larra.xyz/image_testing/image_upload.php";
  static const getInv = "https://larra.xyz/php_serivecs/dashboard/get_inv.php";
/////////////////////////////////////############# Searching.................../////////////////////////
  static const searchingAdminName = "${path}/searching_admin.php";
  static const searchingUserName = "${path}/searching_name_user.php";
  static const searchingMainTypeName = "${path}/searching_main_type.php";
  static const searchingSubTypeName = "${path}/searching_sub_type.php";
  static const searchingTypeSubTypeName = "${path}/searching_type_sub.php";
  static const searchingOrderNumber = "${path}/searching_id_order.php";
  static const searchingNameServiceMan =
      "${path}/searching_name_service_man.php";
}
