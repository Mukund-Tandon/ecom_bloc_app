import 'package:ecom_bloc_app/presentation/screens/homescreen.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  Route? onGenerateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case '/':
      return MaterialPageRoute(builder: (context)=>HomeScreen());
      break;
    }
  }
}