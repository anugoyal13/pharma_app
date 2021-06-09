//
//
// class Data {
//   String med_name='';
//    String image='';
//    String price='';
//    String quantity='';
//
//   // List<Blogdetails> subtype;
//
//
//   Data({ this.med_name='', this.image='', this.price='', this.quantity=''});
//
//
//
//   Data.fromJson(Map<String, dynamic> json) {
//     med_name=json["med_name"];
//     image=json["image"];
//     price=json["price"];
//     quantity=json["quantity"];
//     // details[
//
//
//     //location_name=json["location_name"];
//   }
//   Map<String, dynamic> toJson()  {
//
//     final Map<String, dynamic> data = new Map <String, dynamic>();
//     data['med_name'] = this.med_name;
//     data['image'] = this.image;
//     data['price']=this.price;
//     data['quantity']=this.quantity;
//     throw Exception();
//
//   }
//
// }

class Data {
  late String med_name;
  late String image;
  late String price;
  late String quantity;

  Data(
      {required this.med_name, required this.price, required this.quantity, required this.image});

   Data.fromJson(Map<String,dynamic> json){
    med_name=json["med_name"];
    image=json["image"];
    price=json["price"];
    quantity=json["quantity"];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data=new Map<String,dynamic>();
    // String data= new String;
    data['med_name'] = this.med_name;
 data['image'] = this.image;
   data['price']=this.price;
   data['quantity']=this.quantity;
   return data;


}
}