class User {
  final String UserName;
  final String Email;
  final String Password;

  const User(
      {
      required this.UserName,
      required this.Email,
      required this.Password});

  factory User.fromJson(Map<String, dynamic> json) => User(
        UserName: json["userName"],
        Email: json["email"],
        Password: json["Password"],
      
      );

  Map<String, dynamic> toJson() => {
        "userName": UserName,
        "Email": Email,
        "Password": Password
      };
}
