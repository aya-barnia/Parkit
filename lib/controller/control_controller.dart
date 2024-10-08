import 'package:employee_parking/model/garage_model.dart';
import 'package:employee_parking/view/add_customer_view.dart';
import 'package:employee_parking/view/all_customer_view.dart';
import 'package:employee_parking/view/customer_subscription.dart';
import 'package:employee_parking/view/scan_camera_view.dart';
import 'package:employee_parking/view/send_feedback_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/home_view.dart';
import '../view/profile_view.dart';
import '../view/service_for_a_customer_view.dart';
import '../view/settings_view.dart';

class ControlController extends GetxController {
  GlobalKey<ScaffoldState> openDrawer = GlobalKey<ScaffoldState>();
  late Widget _currentScreen;
  get currentScreen => _currentScreen;

  void init(GarageModel garageModel){
    _currentScreen = HomeView(select: garageModel);
  }
  void changeSelectedValue(int selected,GarageModel garageModel) {

    update();
    switch (selected) {
      case 0:
        {
          _currentScreen = HomeView(select:garageModel);
          break;
        }
      case 1:
        {
          _currentScreen = ScanCameraView();
          break;
        }
      case 2:
        {
          _currentScreen = AddCustomerView();
          break;
        }
      case 3:
        {
          _currentScreen = ServiceForCustomerView();
          break;
        }
      case 4:
        {
          _currentScreen = CustomerSubscription();
          break;
        }
        case 5:
        {
          _currentScreen = ScanCameraView();
          break;
        }
      case 6:
        {
          _currentScreen = AllCustomerView();
          break;
        }
      case 7:
        {
          _currentScreen = ProfileView();
          break;
        }
      case 8:
        {
          _currentScreen = SettingsView();
          break;
        }
      case 9:
        {
          _currentScreen = SendFeedBackView();
          break;
        }
    }
  }
}
