//lib/domain/entities/user.dart

class User {
  final String id;
  final String name;
  final String email;
  final String? profileImage;

  const User({
    required this.id,
    required this.name,
    required this.email,
    this.profileImage,
  });

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? profileImage,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      profileImage: profileImage ?? this.profileImage,
    );
  }
}