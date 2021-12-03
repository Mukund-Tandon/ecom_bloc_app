import 'package:ecom_bloc_app/logic/bloc/items_list_logic/items_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ItemsListScreen extends StatelessWidget {
  const ItemsListScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<ItemsBloc, ItemsState>(
            builder: (context, state) {
              if(state is ItemsLoaded){
                return Expanded(
                  child: ListView.builder(
                    itemCount: state.items.length,
                    itemBuilder: (BuildContext context , int index){
                        
                        return Container(
                          width: 300,
                          height: 200,
                          child: Column(
                            children: [
                              Text(state.items[index].name),
                            ],
                          ),
                        );
                      }),
                );
              }
              else if (state is ItemsLoading){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Container();
            },
          )
        ],
      ),
    );
  }
}