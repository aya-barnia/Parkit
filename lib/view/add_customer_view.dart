import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/gerage_controller.dart';
import '../helper/constant.dart';
import 'all_customer_view.dart';

class AddCustomerView extends StatelessWidget {
  AddCustomerView({Key? key}) : super(key: key);
  final myController = Get.put(GarageController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightgreen,
      //appBar: AppBar(backgroundColor: lightgreen),
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Stack(
            children: [
             Container( 
          height: 300,
          child: ClipPath(
          clipper: CustomClipPath(), 
          child: Container(
            color:darkblue,
            height: 200,
          ),)
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text(
                'ADD CUSTOMER',
                style: TextStyle(
                    color: deepdarkblue,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
          ),
            ]
          ),
          SizedBox(height: 45),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              fillColor: lightgreen,
              hintText: 'Customer Name',
              prefixIcon: Icon(
                Icons.person,
                color: deepdarkblue,
              ),
              hintStyle: TextStyle(color: deepdarkblue),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: deepdarkblue),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          SizedBox(height: 35),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              fillColor: lightgreen,
              hintText: 'Car Number',
              prefixIcon: Icon(
                Icons.car_repair,
                color: deepdarkblue,
              ),
              hintStyle: TextStyle(color: deepdarkblue),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: deepdarkblue),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          SizedBox(height: 35),
          // Row(
          //   children: [
          //     SizedBox(width: 90),
          //     Icon(
          //       Icons.person_add,
          //       size: 150,
          //       color: deepdarkblue,
          //     ),
          //   ],
          // ),
          SizedBox(height: 35),
          Row(
            children: [
              SizedBox(width: 130),
              MaterialButton(
                onPressed: () {
                  Get.to(AllCustomerView());
                },
                child: Text('ADD',
                    style: TextStyle(
                        color: grey, fontFamily: AutofillHints.familyName)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                color: darkblue,
                minWidth: 120,
                height: 50,
              ),
            ],
          )
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
// import 'package:get/get.dart';
// import 'package:parking/view/all_vehicle_view.dart';

// import '../helper/constant.dart';

// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ////////////////////////////////////////////////////////////
// class AddCarScreen extends StatelessWidget {
//   final CarsController carsController = Get.find<CarsController>();
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController numberController = TextEditingController();
//   final RxString dropdownValue = "assets/images/car1.jpg".obs;

//   void _onSave() {
//     final name = nameController.text;
//     final number = numberController.text;
//     if (name.isNotEmpty && number.isNotEmpty) {
//       carsController.addCar(name, number, dropdownValue.value);
//       Get.back();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: lightgreen,
//         iconTheme: IconThemeData(
//           color: deepdarkblue,
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Text(
//               //   'Add Car',
//               //   style: TextStyle(
//               //     fontSize: 24.0,
//               //     fontWeight: FontWeight.bold,
//               //   ),
//               // ),
//               SizedBox(height: 16.0),
//               TextFormField(
//                 controller: nameController,
//                 decoration: InputDecoration(
//                   labelText: 'Car Name',
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               TextFormField(
//                 controller: numberController,
//                 decoration: InputDecoration(
//                   labelText: 'Car Number',
//        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),              ),
//               ),
//               SizedBox(height: 16.0),
//               Center(
//                 child: Container(
                  
//                   width: 400,
//                   height: 300.0,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: deepdarkblue,
//                       width: 2.0,
//                     ),
//                     borderRadius: BorderRadius.circular(16.0),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Obx(
//                         () => DropdownButton<String>(
//                           value: dropdownValue.value,
//                           onChanged: (String? newValue) {
//                             dropdownValue.value = newValue!;
//                           },
//                           items: <String>[
//                             'assets/images/car1.jpg',
//                             'assets/images/car2.jpg',
//                             'assets/images/car3.jpg',
//                             'assets/images/car4.jpg',
//                             'assets/images/car5.jpg',
//                             'assets/images/car6.jpg',
//                             'assets/images/car7.jpg',
//                           ].map<DropdownMenuItem<String>>((String value) {
//                             return DropdownMenuItem<String>(
//                               value: value,
//                               child: Image.asset(
//                                 value,
//                                 // width: 100,
//                                 // height: 100,
//                               ),
//                             );
//                           }).toList(),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16.0),
//               ElevatedButton(
//                 onPressed: _onSave,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: deepdarkblue,
//                   alignment: Alignment.center,
//                 ),
//                 child: Text('Save'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }