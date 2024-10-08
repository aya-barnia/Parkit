import 'package:employee_parking/view/subscriptions_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/constant.dart';

class CustomerSubscription extends StatelessWidget {
   CustomerSubscription({Key? key}) : super(key: key);

List<Map<dynamic, dynamic>> subscription_type = [
      {
        'service': 'subscription 1',
        'price': '2001',
        'user': 'ahmad ',
      },
      {
        'service': 'subscription 2',
        'price': '300',
        'user': 'samer ',
      },
      {
        'service': 'subscription 3',
        'price': '444',
        'user': 'aya',
      },];



  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: lightgreen,
     body: ListView.builder(
        itemCount: subscription_type.length,
        itemBuilder: (context, index) {
          return GestureDetector(
           
            child: Card(
              borderOnForeground: debugDisableShadows,
              child: ListTile(
                 onTap:(){
             
            },
                title: Text(subscription_type[index]['service'],style: TextStyle(color: darkblue,fontWeight: FontWeight.bold,fontSize: 25
                ),),
                subtitle: Text(subscription_type[index]['price']+' s.p',style: TextStyle(color: darkred,fontSize: 20),),
                trailing: Text(subscription_type[index]['user'],style: TextStyle(color: deepdarkblue,fontSize: 20)),
                 
              ),
              
            ),
          );
          
        },
        
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
          Get.to(subscriptions());
      },
      backgroundColor:deepdarkblue ,
      foregroundColor:grey,
    //  child: Text('add service to customer'),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)), 
     // mini: false, 
     icon: Icon(Icons.add),
     label: Text('add subscription to customer'),

      ),
    );
  }
}
