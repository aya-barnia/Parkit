import 'package:employee_parking/controller/gerage_controller.dart';
import 'package:employee_parking/helper/constant.dart';
import 'package:employee_parking/view/control_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final myController = Get.put(GarageController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightgreen,
      appBar: AppBar(backgroundColor: lightgreen,title: Center(
        child: Text('parking',style: TextStyle(fontFamily: 'Billabong',color: deepdarkblue,fontSize: 40,
                            fontWeight: FontWeight.w500),),
      ),),
      body: Column(
       //  mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
      
        children: [
          Stack(children: [
             Container( 
        height: 300,
        child: ClipPath(
        clipper: CustomClipPath(), 
        child: Container(
          color:darkblue,
          height: 200,
        ),)
        ),
            Column(
              children: [
                SizedBox(height: 50,),
                Text('WELCOME!',style: TextStyle(color: deepdarkblue, fontWeight: FontWeight.bold,fontSize: 50),
                        ),
                        SizedBox(height: 50,),
          Text('LOGIN to your account',style: TextStyle(color: deepdarkblue,fontSize: 30),
          )
              ],
            )
          ]
          ),
         SizedBox(height: 30),
         TextField(
          
            controller: emailController,
            decoration:InputDecoration(
            fillColor: lightgreen,
            hintText: 'Email',
            prefixIcon: Icon(Icons.email,color: deepdarkblue,),
            hintStyle: TextStyle(color:deepdarkblue),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
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
              hintText: 'Password',
              prefixIcon: Icon(Icons.lock,color: deepdarkblue,),
               hintStyle: TextStyle(color:deepdarkblue),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color:deepdarkblue),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
                      SizedBox(height: 25),
          Expanded(
            child: Row(
              children: [
                Expanded(
              child: Image(image: AssetImage('assets/images/login.png'),
                    width: 400,
              ),
            ),
             MaterialButton(
                  onPressed: () {
                    for (var garage in myController.garage) {
                      Get.to(ControlView(garage: garage));
                    }
                  },
                  child: Text('Login',style: TextStyle(color:Colors.white,fontFamily: AutofillHints.familyName),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  color:darkblue,
                 minWidth: 130,
                 height: 50,
          
                ),
          
              ],
            ),
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