class Items{
  String name;
  int price;
  int orders;
  List<dynamic> tags;
  Items({required this.name,required this.price, required this.orders, required this.tags});

  factory Items.fromJson(Map<String,dynamic> json){
    return Items(name: json["name"], price: json["price"], orders: json["orders"], tags: json["tag"]);
  }
}