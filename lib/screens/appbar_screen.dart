import 'package:flutter/material.dart';

AppBar buildCommonAppBar({required String title,Widget? leading,List<Widget>? action}){
  return AppBar(
    title: Text('LOREM BANK',style: TextStyle(fontSize: 20,fontFamily: 'Montserrat'),),
    // titleSpacing: 65,
    centerTitle: true ,
    backgroundColor: Colors.white,
    elevation: 50,
    leading: IconButton(onPressed: (){}, icon: Icon(Icons.dashboard_customize_outlined,color: Colors.grey,size: 30,))
    ,leadingWidth: 80
    ,actions: action?? [IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none_outlined,color: Colors.grey,size: 30,))
    ,
  ],


  );

}