class UserModel {
  String? uid;
  String? username;
  String? email;
  String? profilepic;
  String? password;

  UserModel({uid,this.username,this.email,this.profilepic,this.password});

  UserModel.fromMap(Map<String,dynamic>map){
    uid=map["uid"];
    username=map["username"];
   email=map["username"];
   profilepic=map["username"];
   password=map["password"];
  }

  Map<String,dynamic> toMap(){
    return{
      "uid":uid,
      "username":username,
    "email":email,
    "profilepic":profilepic,
      "password":password,
    };
  }



}