import 'package:ecom_bloc_app/config/app_routes.dart';
import 'package:ecom_bloc_app/logic/bloc/items_list_logic/items_bloc.dart';
import 'package:ecom_bloc_app/repos/items_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRoutes appRoutes = AppRoutes();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItemsBloc>(
      create: (context) => ItemsBloc(itemsRepo: ItemsRepo()),
      child: MaterialApp(
        title: 'Flutter Demo',
        onGenerateRoute: appRoutes.onGenerateRoute,
      ),
    );
  }
}
