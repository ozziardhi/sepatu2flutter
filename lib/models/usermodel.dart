class UserModel {
  int id;
  String name;
  String email;
  String username;
  String? profilePhotoUrl;
  String token;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    this.profilePhotoUrl, // Tidak wajib
    required this.token,
  });

   factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      profilePhotoUrl: json['profile_photo_url'] .toString(),
      token: json['token'] as String,
    );
  }


   Map<String, dynamic> toJson(){
      return{
         'id':id,
         'name':name,
         'email':email,
         'username':username,
         'profile_photo_url':profilePhotoUrl,
         'token':token,
      };
   }
}
