


import 'package:employee_parking/view/services_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../helper/constant.dart';

class ServiceForCustomerView extends StatelessWidget {
   ServiceForCustomerView({Key? key}) : super(key: key);


   List<Map<dynamic, dynamic>> services_type = [
      {
        'service': 'car wash',
        'price': '2001',
        'user': 'John Doe',
      },
      {
        'service': 'oil change',
        'price': '300',
        'user': 'Jane Doe',
      },
      {
        'service': 'wheel balancing',
        'price': '444',
        'user': 'Peter Smith',
      },
       {
        'service': 'wheel balancing',
        'price': '444',
        'user': 'Peter Smith',
      },
       {
        'service': 'wheel balancing',
        'price': '444',
        'user': 'Peter Smith',
      },
       {
        'service': 'wheel balancing',
        'price': '444',
        'user': 'Peter Smith',
      },
       {
        'service': 'wheel balancing',
        'price': '444',
        'user': 'Peter Smith',
      },
       {
        'service': 'wheel balancing',
        'price': '444',
        'user': 'Peter Smith',
      },
       {
        'service': 'wheel balancing',
        'price': '444',
        'user': 'Peter Smith',
      },
       {
        'service': 'wheel balancing',
        'price': '444',
        'user': 'Peter Smith',
      },
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightgreen,
     body: ListView.builder(
        itemCount: services_type.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
           
            child: Card(
              borderOnForeground: debugDisableShadows,
              child: ListTile(
                 onTap:(){
              
            },
                title: Text(services_type[index]['service'],style: TextStyle(color: darkblue,fontWeight: FontWeight.bold,fontSize: 25
                ),),
                subtitle: Text(services_type[index]['price']+' s.p',style: TextStyle(color: darkred,fontSize: 20),),
                trailing: Text(services_type[index]['user'],style: TextStyle(color: deepdarkblue,fontSize: 20)),
                 
              ),
              
            ),
          );
        },
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
         Get.to(services());
      },
      backgroundColor:deepdarkblue ,
      foregroundColor:grey,
    //  child: Text('add service to customer'),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)), 
     // mini: false, 
     icon: Icon(Icons.add),
     label: Text('add service to customer'),

      ),
    );
  }
}


