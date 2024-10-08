import 'package:employee_parking/model/garage_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/constant.dart';
import '../model/home_model.dart';

class GarageController extends GetxController {
  RxInt selectedIndexButtons = 0.obs;
  RxInt selectedIndexText = 0.obs;
  RxInt floor = 1.obs;

  get customers => null;

  get CustomersList => null;

  get barcode => null;

  void changeColor(int index) {
    selectedIndexButtons.value = index;
    selectedIndexText.value = index;
    update();
  }

  void increase(int index) {
    floor.value = index + 1;
    update();
  }

  Color getColorButtons(int index) {
    return selectedIndexButtons.value == index ? darkblue : Colors.white;
  }

  Color getColorText(int index) {
    return selectedIndexButtons.value == index ? Colors.white : darkblue;
  }

  var garage = <GarageModel>[
    GarageModel(
        name: "Al-Nana",
        qualities: HomeModel(
            flrAquai: RxMap.from({
          "1": [
            {"A01": "busy"},
            {"A02": "busy"},
            {"A03": "available"},
            {"A04": "available"},
            {"A05": "booked"},
            {"A06": "available"},
          ],
          "2": [
            {"A01": "busy"},
            {"A02": "available"},
            {"A03": "busy"},
            {"A04": "busy"},
            {"A05": "busy"},
          ],
          "3": [
            {"A01": "busy"},
            {"A02": "available"},
            {"A03": "busy"},
            {"A04": "booked"},
          ],
          "4": [
            {"A01": "busy"},
            {"A02": "available"},
            {"A03": "busy"},
            {"A04": "available"},
          ],
        })))
  ].obs;

  void addCustomer(customer) {}

  static void deleteCustomer(int index) {}
}
