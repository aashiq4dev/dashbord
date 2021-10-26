import 'package:dashbord_ui/constant/style.dart';
import 'package:dashbord_ui/routing/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = OverViewPageRoutes.obs;
  var hoverItem = ''.obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;

  Widget retrunIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageRoutes:
        return _customIcon(itemName, Icons.trending_up_rounded);
         case DriversPageRoutes:
        return _customIcon(itemName, Icons.drive_eta_rounded);
         case ClientsPAgeRoutes:
        return _customIcon(itemName, Icons.people_alt_rounded);
         case AuthenticationPAgeRoutes:
        return _customIcon(itemName, Icons.exit_to_app_rounded);

      default:
        return _customIcon(itemName, Icons.exit_to_app_rounded);
    }
  }

  Widget _customIcon(String itemName, IconData icon) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        color: dark,
        size: 22.0,
      );
    }
    return Icon(icon, color: isHovering(itemName) ? dark : lightGrey);
  }
}
