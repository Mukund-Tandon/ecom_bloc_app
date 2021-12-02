import 'package:ecom_bloc_app/config/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  final AppRoutes appRoutes = AppRoutes();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: appRoutes.onGenerateRoute,
    );
  }
}


