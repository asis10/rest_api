import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/model/user_model.dart';
import 'package:rest_api/repository/user_repo.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<UserModel> lists =[];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
           List<UserModel> list= await UserRepo().getUser();
          //  print("data $list");
          // print("data ${list.first.firstName}");
          //  lists =list; //state set nagari direct esto garyo vani value basdaina
          setState(() {
          lists=list;  
          });
          

        },
        child: Icon(CupertinoIcons.cloud_download),
        backgroundColor: Color.fromARGB(255, 165, 16, 6),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Rest API"),
        backgroundColor: Color.fromARGB(255, 117, 13, 5),
      ),
      body: Container(
        // color: Color.fromARGB(255, 243, 221, 155),
        height: size.height,
        width: size.width,
        child: ListView.builder(
          itemBuilder: (context,index)
          {
              return ListTile(
                title: Text(lists[index].firstName+" "+lists[index].lastName),
                subtitle: Text(lists[index].email),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(lists[index].avatar),
                ),
              );
          },
          itemCount: lists.length,
          ),

      ),
    
    );
  }
}