import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset('assets/images/dragonfruit.jpg'),
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