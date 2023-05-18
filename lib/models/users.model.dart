//user model
class User {
  final String id;
  final String name;
  final String email;
  final List applied;
  final String imageUrl;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.applied,
      required this.imageUrl});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['_id']!,
        name: json['name']!,
        email: json['email']!,
        applied: json['applied']!,
        imageUrl: json['imageUrl']!);
  }
}
