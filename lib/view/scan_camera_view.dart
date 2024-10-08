// import 'package:flutter/material.dart';

// class ScanCameraView extends StatelessWidget {
//   const ScanCameraView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text("Scan Camera"),
//       ),
//     );
//   }
// }
//import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// class ScanCameraView  extends StatelessWidget {

//   final scannerCtl = Get.put(ScannerController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () => scannerCtl.scan(),
//               child: Text("Scan"),
//             ),
//             Obx(() => Text(
//               "Scanned result: ${scannerCtl.result.value}",
//               style: TextStyle(fontSize: 20),
//             )),
//           ],
//         ),
//       ),
//     );
//   }

// }

// class ScannerController extends GetxController {

//   final result = RxString('');

//   Future<void> scan() async {
//     try {
//       final barcode = await FlutterBarcodeScanner.scanBarcode(
//         '#ff6666',
//         'Cancel',
//         true,
//         ScanMode.BARCODE);

//       result.value = barcode;
//       print('Scanned barcode: $barcode');
//        print('111');

//     } on PlatformException {
//       result.value = 'Failed to get platform version';
//     }
//   }

// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../helper/constant.dart';

class ScanCameraView extends StatelessWidget {
  final scannerCtl = Get.put(ScannerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightgreen,
      body: Column(
        children: [
          Stack(children: [
            Container(
                height: 300,
                child: ClipPath(
                  clipper: TsClip2(),
                  child: Container(
                    color: deepdarkblue,
                    height: 200,
                  ),
                )),
            Image(
              image: AssetImage('assets/images/scanview.png'),
              width: 400,
            ),
          ]),
          SizedBox(
            height: 40,
          ),
          MaterialButton(
            onPressed: () => scannerCtl.scan(),
            child: Text(
              "Scan",
              style: TextStyle(color: grey),
            ),
            color: darkblue,
            minWidth: 100,
            height: 50,
          ),
          StreamBuilder<String>(
            stream: scannerCtl.scanResultStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!);
              } else {
                return Text('Scanning...');
              }
            },
          ),

           SizedBox(
            height: 40,
          ),

          MaterialButton(
            onPressed: () {},
            child: Text("pay a charge",style: TextStyle(color: grey),),
           color: deepdarkblue,
           minWidth: 300,
           height: 50,
           
          ),
          SizedBox(height: 10,),
         MaterialButton(
            onPressed: () {},
            child: Text("take up a parking ",style: TextStyle(color: grey),),
           color: deepdarkblue,
           minWidth: 300,
           height: 50,
           
          ),
          SizedBox(height: 10,),
         MaterialButton(
            onPressed: () {},
            child: Text("take out a car",style: TextStyle(color: grey),),
           color: deepdarkblue,
           minWidth: 300,
           height: 50,
           
          ),
        ],
      ),
    );
  }
}

class ScannerController extends GetxController {
  final result = RxString('');

  Stream<String> get scanResultStream => result.stream;

  Future<void> scan() async {
// The barrierDismissible parameter specifies whether the user can dismiss the scanner by tapping outside of the scanner area.
    final barcode = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666',
      'Cancel',
      true,
      ScanMode.DEFAULT,
    );

    result.value = barcode;
    print('Scanned barcode: $barcode');
  }
}

class TsClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 100);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// class ScanCameraView extends StatefulWidget {
//   const ScanCameraView({Key? key}) : super(key: key);

//   @override
//   State<ScanCameraView> createState() => _ScanCameraViewState();
// }

// class _ScanCameraViewState extends State<ScanCameraView> {
//   String barcode = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Barcode: $barcode',
//               style: const TextStyle(fontSize: 24),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 barcode = await FlutterBarcodeScanner.scanBarcode(
//                   '#ff6666',
//                   'Cancel',
//                   true,
//                   ScanMode.DEFAULT,
//                 );

//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text('Barcode scanned: $barcode'),
//                   ),
//                 );
//               },
//               child: const Text('Scan barcode'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
