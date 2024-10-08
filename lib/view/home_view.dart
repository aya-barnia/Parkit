import 'package:employee_parking/model/garage_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/gerage_controller.dart';
import '../helper/constant.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key,this.select}) : super(key: key);
  final GarageModel? select;
  final _controller = Get.put(GarageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 35,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: select!.qualities.flrAquai.keys.length,
              itemBuilder: (BuildContext context, int index) {
                return Obx(
                      () => InkWell(
                    onTap: () {
                      _controller.changeColor(index);
                      _controller.increase(index);
                    },
                    child: Container(
                      width: 110,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.6, color: darkblue),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                        color: _controller.getColorButtons(index),
                      ),
                      child: Text(
                        "${select!.qualities.flrAquai.keys.elementAt(index)} Floor",
                        style: TextStyle(
                          color: _controller.getColorText(index),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(
                width: 12,
              ),
            ),
          ),
        ],
      )
    );
  }
}
