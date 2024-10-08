import 'package:employee_parking/model/garage_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/control_controller.dart';
import '../helper/constant.dart';

class ControlView extends StatelessWidget {
  ControlView({Key? key,required this.garage}) : super(key: key);
  final GarageModel garage;
  final _controller = Get.put(ControlController());
  @override
  Widget build(BuildContext context) {
    _controller.init(garage);
    return GetBuilder<ControlController>(
      init: ControlController(),
      builder: (controller) {
        return Scaffold(
          key: controller.openDrawer,
          drawer: Drawer(
            elevation: 0,
            child: Column(
              children: [
                Container(
                  height: 80,
                  color: lightgreen,
                  margin: const EdgeInsets.only(top: 15, left: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/setting.png",
                        scale: 0.7,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        "Parkit",
                        style: TextStyle(
                          fontFamily: 'Billabong',
                          color: deepdarkblue,
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.changeSelectedValue(0,garage);
                    controller.openDrawer.currentState!.closeDrawer();
                  },
                  child: ListTile(
                    title: const Text(
                      "Home",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text("Floor & qualities"),
                    leading: Icon(Icons.home, size: 35, color: darkblue),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.changeSelectedValue(1,garage);
                    controller.openDrawer.currentState!.closeDrawer();
                  },
                  child: ListTile(
                    title: const Text(
                      "Scan Camera",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.document_scanner_outlined,
                        size: 35, color: darkblue),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.changeSelectedValue(2,garage);
                    controller.openDrawer.currentState!.closeDrawer();
                  },
                  child: ListTile(
                    title: const Text(
                      "Add Customer",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.person_add, size: 35, color: darkblue),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.changeSelectedValue(3,garage);
                    controller.openDrawer.currentState!.closeDrawer();
                  },
                  child: ListTile(
                    title: const Text(
                      "services",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    leading:
                    Icon(Icons.design_services, size: 35, color: darkblue),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.changeSelectedValue(4,garage);
                    controller.openDrawer.currentState!.closeDrawer();
                  },
                  child: ListTile(
                    title: const Text(
                      "subscriptions",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.subscriptions, size: 35, color: darkblue),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.changeSelectedValue(5,garage);
                    controller.openDrawer.currentState!.closeDrawer();
                  },
                  child: ListTile(
                    title: const Text(
                      "take out a car",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.keyboard_return, size: 35, color: darkblue),
                  ),
                ),
                const Divider(),
                InkWell(
                  onTap: () {
                    controller.changeSelectedValue(6,garage);
                    controller.openDrawer.currentState!.closeDrawer();
                  },
                  child: const ListTile(
                    title: Text(
                      "All customers",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    leading:
                    Icon(Icons.group_sharp, size: 35, color: Colors.black54),
                  ),
                ),
                const Divider(),
                InkWell(
                  onTap: () {
                    controller.changeSelectedValue(7,garage);
                    controller.openDrawer.currentState!.closeDrawer();
                  },
                  child: const ListTile(
                    title: Text(
                      "Profile",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.person, size: 35, color: Colors.black54),
                  ),
                ),
                const Divider(),
                InkWell(
                  onTap: () {
                    controller.changeSelectedValue(8,garage);
                    controller.openDrawer.currentState!.closeDrawer();
                  },
                  child: const ListTile(
                    title: Text(
                      "Settings",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    leading:
                    Icon(Icons.settings, size: 35, color: Colors.black54),
                  ),
                ),
                const Divider(),
                InkWell(
                  onTap: () {
                    controller.changeSelectedValue(9,garage);
                    controller.openDrawer.currentState!.closeDrawer();
                  },
                  child: const ListTile(
                    title: Text(
                      "Send feedback",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.send_outlined,
                        size: 35, color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: lightgreen,
            elevation: 0,
            title: Text(
              "Parkit",
              style: TextStyle(
                fontFamily: 'Billabong',
                color: deepdarkblue,
                fontSize: 40,
                fontWeight: FontWeight.w500,
                height: 2,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                controller.openDrawer.currentState?.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: deepdarkblue,
                size: 40,
              ),
            ),
          ),
          body: controller.currentScreen,
        );
      }
    );
  }
}
