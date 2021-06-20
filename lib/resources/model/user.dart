class User {
  String uid;
  String email;
  String username;
  String displayName;
  String lastName;
  String profilePhoto;
  String phone;

  User(
      {this.uid,
      this.email,
      this.username,
      this.displayName,
      this.lastName,
      this.profilePhoto,
      this.phone});

  Map<String, dynamic> toMap(User user) {
    var data = Map<String, dynamic>();
    data['uid'] = user.uid;
    data['email'] = user.email;
    data['username'] = user.username;
    data['displayName'] = user.displayName;
    data["lastName"] = user.lastName;
    data["profilePhoto"] = user.profilePhoto;
    data["phone"] = user.phone;
    return data;
  }

  // Named constructor
  User.fromMap(Map<String, dynamic> mapData) {
    this.uid = mapData['uid'];
    this.email = mapData['email'];
    this.displayName = mapData['displayName'];
    this.username = mapData['username'];
    this.lastName = mapData['lastName'];
    this.profilePhoto = mapData['profilePhoto'];
  }
}
