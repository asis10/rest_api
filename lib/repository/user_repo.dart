import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rest_api/model/user_model.dart';
class UserRepo{
   Future<List<UserModel>> getUser() async{
     List<UserModel> list = [];
     try{
       var request = http.Request("GET",Uri.parse("https://reqres.in/api/users?page=2"));
       http.StreamedResponse response = await request.send(); //response ma request gareko data aayera basxa
       if(response.statusCode==200)
       {
        var rawData = await response.stream.bytesToString();
        var dataa = json.decode(rawData); //it decodes the rawData
        for(var e in dataa["data"])
        {
          UserModel model = UserModel.fromJson(e);
          list.add(model);
        }
        return list;
       }
       else{
         print(response.reasonPhrase);
         return list;
       }
      //  return list;
       
     }
     catch(e)
     {
       print("Exception $e");
       throw e;
     }
   }
}