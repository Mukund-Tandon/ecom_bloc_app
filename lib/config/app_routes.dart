import 'package:ecom_bloc_app/presentation/screens/homescreen.dart';
import 'package:ecom_bloc_app/presentation/screens/items_list_display_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  Route? onGenerateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case '/':
      return MaterialPageRoute(builder: (context)=>HomeScreen());
      break;
      case '/itemlist':
      return MaterialPageRoute(builder: (context)=>ItemsListScreen());
      break;
    }
  }
}