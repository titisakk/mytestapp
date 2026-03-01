// Model Class
class User {
  final int id;
  final String firstName;
  final String username;
  final String lastName;
  final String fullName;
  final String email;

  // แปลง JSON เป็น Object
  //Constructor
  User(this.id, this.firstName, this.lastName, this.fullName, this.email, this.username);

  //convert json to Map
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        firstName = json['firstName'],
        username = json['username'],
        lastName = json['lastName'],
        fullName = json['firstName'] + ' ' + json['lastName'],
        email = json['email'];

  // แปลง Object เป็น JSON Map
  //convert map to json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'username': username,
      'lastName': lastName,
      'email': email
    };
  }
}