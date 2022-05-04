// this class is created for converting json file into model or object
class UserModel{
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  UserModel({required this.id,required this.email,required this.firstName,required this.lastName,required this.avatar});

  factory UserModel.fromJson(Map<String,dynamic> jsoon) => UserModel(  //factory UserModel.fromJson(Map<String,dynamic> jsoon) converts json files to models
    id: jsoon["id"], 
    email: jsoon["email"],
    firstName: jsoon["first_name"],
    lastName: jsoon["last_name"],
    avatar: jsoon["avatar"]);
}