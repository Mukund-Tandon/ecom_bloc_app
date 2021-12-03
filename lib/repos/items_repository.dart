import 'dart:convert';


import 'models/items.dart';
import 'package:http/http.dart' as http;
abstract class ItemsRepository{
  Future<List<Items>> getItems();
}

class ItemsRepo extends ItemsRepository{
  @override
  Future<List<Items>> getItems() async{
    List<Items> itemlist=[];
    http.Response responce = await http.get(Uri.parse("https://raw.githubusercontent.com/Mukund-Tandon/ecom_bloc_app/main/lib/mockdb/items.json"));
    var body = jsonDecode(responce.body);
    print(body);
    for(var item in body["items"]){
      itemlist.add(Items.fromJson(item));
    }
    print(itemlist);
    return itemlist;

    
  }
}