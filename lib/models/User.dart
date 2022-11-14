class User {
  final String id;
  final String firtName;
  final String username;
  final String email;

  User(
      {required this.id,
      required this.firtName,
      required this.username,
      required this.email});

  factory User.fromJSONResponse(Map<String, dynamic> response) {
    return User(
        id: response['_id'],
        firtName: response['first_names'],
        username: response['surname'],
        email: response['email']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firtName,
      'username': username,
      'email': email
    };
  }
}
