class UserModel {
  String name;
  String email;
  String password;
  bool loginStatus;
  dynamic exp;
  dynamic lvl;
  dynamic coin;
  dynamic gems;
  String? imagePath;

  UserModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.loginStatus,
      required this.exp,
      required this.lvl,
      required this.coin,
      required this.gems,
      required this.imagePath});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'loginStatus': loginStatus ? 1 : 0,
      'exp': exp,
      'lvl': lvl,
      'coin': coin,
      'gems': gems,
      'imagePath': imagePath,
    };
  }

  @override
  String toString() {
    return 'UserModel{name: $name, email: $email, password: $password, loginStatus: $loginStatus, exp: $exp, lvl: $lvl, coin: $coin, gems: $gems, imagePath: $imagePath}';
  }
}
