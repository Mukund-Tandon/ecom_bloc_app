import 'package:ecom_bloc_app/logic/bloc/items_list_logic/items_bloc.dart';
import 'package:ecom_bloc_app/repos/items_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ItemsRepo itemsRepo = ItemsRepo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
              BlocProvider.of<ItemsBloc>(context).add(GetItems());
              Navigator.pushNamed(context, '/itemlist');
            },
            child: Container(
              child: Image.asset('assets/images/dragonfruit.jpg'),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 100,
                          width: 200,
                          color: Colors.pink,
                          child: Text(
                            'VegieCom',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Image.asset('assets/images/vegie.jpeg',height: 100,width: 200,fit: BoxFit.fill,),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.pink,
                    child: Image.asset('assets/images/pineapple.jpeg',height: 400,width: 200,fit: BoxFit.fill),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}