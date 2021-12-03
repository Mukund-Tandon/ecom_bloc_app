import 'package:ecom_bloc_app/repos/models/items.dart';
import 'package:flutter/material.dart';

class ItemsListContainer extends StatelessWidget {
  List<Items> items ;
  ItemsListContainer({ Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.2),
            blurRadius: 4,
            spreadRadius: 5
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              
            ))
        ],
      ),
    );
  }
}