import 'package:get/get.dart';

class HomeModel{
  final RxMap<String, List<Map<String, String>>> flrAquai;

  HomeModel({
    RxMap<String, List<Map<String, String>>>? flrAquai,
  }) : flrAquai = flrAquai ??
      RxMap.from({
        "": [
          {"": ""}
        ]
      });
}