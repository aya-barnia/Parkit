import 'package:employee_parking/helper/constant.dart';
import 'package:employee_parking/view/all_customer_view.dart';
import 'package:employee_parking/view/all_customer_view2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class services extends StatelessWidget {
  services({super.key});
  final List<String> services_names = [
    'Car wash',
    'Oil change',
    'Tire rotation'
  ];
  final List<int> prices = [2000, 300, 400];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightgreen,
      appBar: AppBar(backgroundColor: lightgreen,title: Center(
        child: Text('parking',style: TextStyle(fontFamily: 'Billabong',color: deepdarkblue,fontSize: 40,
                            fontWeight: FontWeight.w500),),
      ),),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
        ),
        itemCount: services_names.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(services_names[index],style: TextStyle(fontSize: 25,color: deepdarkblue,fontWeight: FontWeight.bold),),
              subtitle: Text(prices[index].toString(),style: TextStyle(fontSize: 25,color: deepdarkblue),),
              trailing: IconButton(
                  onPressed: () {
                    Get.to(AllCustomerView2());
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('please Choose customer '),
                        backgroundColor: darkblue,
                        showCloseIcon:true,
                      ),
                    );
                  },
                  icon: Icon(Icons.add,color: deepdarkblue,)),
            ),
          );
        },
      ),
    );
  }
}
