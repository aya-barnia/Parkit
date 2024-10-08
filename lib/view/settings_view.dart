import 'package:employee_parking/helper/constant.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightgreen,
      body: Stack(
        children: [
           Container( 
            height: 300,
            child: ClipPath(
            clipper: CustomClipPath(), 
            child: Container(
              color:darkblue,
              height: 200,
            ),
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            
            child: Column(
              children: [
                Text('Settings',style: TextStyle(color: deepdarkblue,fontSize: 50),textAlign: TextAlign.start),
                SizedBox(height: 30,),

                // Account section
                Card(
                  color: lightgreen,
                  child: GestureDetector(
                    onTap: (){
                    },
                    child: ListTile(
                      leading: Icon(Icons.person,color: darkblue,size: 30,),
                      title: Text('Account',style: TextStyle(color: deepdarkblue,fontSize: 30),),
                      subtitle: Text('Your name'),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                // Settings section
                Card(
                  color: lightgreen,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: ListTile(
                          leading: Icon(Icons.language,color: darkblue,size: 30),
                          title: Text('Language',style: TextStyle(color: deepdarkblue,fontSize: 30)),
                        ),
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){},
                        child: ListTile(
                          leading: Icon(Icons.dark_mode,color: darkblue,size: 30),
                          title: Text('Theme',style: TextStyle(color: deepdarkblue,fontSize: 30)),
                        ),
                      ),
                                            SizedBox(height: 10,),

                      GestureDetector(
                        onTap: (){},
                        child: ListTile(
                          leading: Icon(Icons.logout,color: darkblue,size: 30),
                          title: Text('Logout',style: TextStyle(color: deepdarkblue,fontSize: 30)),
                        ),
                      ),
                                            SizedBox(height: 10,),

                      GestureDetector(
                        onTap: (){},
                        child: ListTile(
                          leading: Icon(Icons.delete_forever,color: darkblue,size: 30),
                          title: Text('Delete account',style: TextStyle(color: deepdarkblue,fontSize: 30)),
                        ),
                      ),
                                            SizedBox(height: 10,),

                      GestureDetector(
                        onTap: (){},
                        child: ListTile(
                          leading: Icon(Icons.help,color: darkblue,size: 30),
                          title: Text('Help',style: TextStyle(color: deepdarkblue,fontSize: 30)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
 @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width/4, size.height
 - 40, size.width/2, size.height-20);
    path.quadraticBezierTo(3/4*size.width, size.height,
 size.width, size.height-30);
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';

// class SettingsView extends StatelessWidget {
//    SettingsView ({Key? key}) : super(key: key);
//   final scanner = MobileScanner();

//   @override
//   Widget build(BuildContext context) {
//        return Scaffold(
//       appBar: AppBar(
//         title: const Text('Barcode Scanner'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextButton(
//               onPressed: () async {
//                 final result = await scanner.scan();
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text('result.rawContent'),
//                   ),
//                 );
//               },
//               child: const Text('Scan a barcode'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
  
// }
// class MobileScanner {
//   Future<String> scan() async {
//     // Do something to scan the barcode.
//     return '';
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';



// class SettingsView extends StatelessWidget {
//   const SettingsView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             MaterialButton(
//               child: Text('Scan'),
//               onPressed: () async {
//                 String barcode = await FlutterBarcodeScanner.scanBarcode(
//                   '#ff0000',
//                   'cancel',
//                   false,
//                   ScanMode.DEFAULT,
//                   //enableFaceDetection: false,
//                   //enableFaceDetection: true,
                  

//                 );
//                 Text('The barcode scanned is: $barcode');
//               },
//             ),
//             Text('The barcode scanned is:'),
//           ],
//         ),
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// class SettingsView extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<SettingsView> {
//   String barcode = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Center(
//         child: MaterialButton(
//           child: Text('Scan'),
//           onPressed: () async {
//             // Scan the barcode.
//             String barcode = await FlutterBarcodeScanner.scanBarcode(
//               '#ff0000',
//               'cancel',
//               false,
//               ScanMode.DEFAULT,
//             //  enableFaceDetection: true,
//             );

//             // Print the barcode content.
//             setState(() {
//               this.barcode = barcode;
//             });
//           },
//         ),
//       ),
//     );
//   }
// }



// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


// class SettingsView extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<SettingsView> {
//   String _scanBarcode = 'Unknown';

//   @override
//   void initState() {
//     super.initState();
//   }

//   Future<void> startBarcodeScanStream() async {
//     FlutterBarcodeScanner.getBarcodeStreamReceiver(
//             '#ff6666', 'Cancel', true, ScanMode.DEFAULT)!
//         .listen((barcode) => print(barcode));
//   }

//   Future<void> scanQR() async {
//     String barcodeScanRes;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//           '#ff6666', 'Cancel', true, ScanMode.QR);
//       print(barcodeScanRes);
//     } on PlatformException {
//       barcodeScanRes = 'Failed to get platform version.';
//     }

//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;

//     setState(() {
//       _scanBarcode = barcodeScanRes;
//     });
//   }

//   // Platform messages are asynchronous, so we initialize in an async method.
//   Future<void> scanBarcodeNormal() async {
//     String barcodeScanRes;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//           '#ff6666', 'Cancel', true, ScanMode.DEFAULT);
//       print(barcodeScanRes);
//     } on PlatformException {
//       barcodeScanRes = 'Failed to get platform version.';
//     }

//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;

//     setState(() {
//       _scanBarcode = barcodeScanRes;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(title: const Text('Barcode scan')),
//             body: Builder(builder: (BuildContext context) {
//               return Container(
//                   alignment: Alignment.center,
//                   child: Flex(
//                       direction: Axis.vertical,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         ElevatedButton(
//                             onPressed: () => scanBarcodeNormal(),
//                             child: Text('Start barcode scan')),
                      
//                         Text('Scan result : $_scanBarcode\n',
//                             style: TextStyle(fontSize: 20))
//                       ]));
//             })));
//   }
// }