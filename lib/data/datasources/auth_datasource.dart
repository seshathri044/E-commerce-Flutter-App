import '../../domain/entities/user.dart';

class AuthDataSource {
  static User? _currentUser; // ✅ Added missing declaration
  static User? get currentUser => _currentUser;

  static final List<Map<String, String>> _users = [];

  Future<User?> getCurrentUser() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _currentUser;
  }

  Future<User> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));

    final userMap = _users.firstWhere(
      (user) => user['email'] == email && user['password'] == password,
      orElse: () => throw Exception('Invalid credentials'),
    );

    _currentUser = User(
      id: userMap['id']!,
      name: userMap['name']!,
      email: userMap['email']!,
    );

    return _currentUser!;
  }

  Future<User> register(String name, String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));

    final existingUser = _users.where((user) => user['email'] == email);
    if (existingUser.isNotEmpty) {
      throw Exception('User already exists');
    }

    final userId = DateTime.now().millisecondsSinceEpoch.toString();
    _users.add({
      'id': userId,
      'name': name,
      'email': email,
      'password': password,
    });

    _currentUser = User(
      id: userId,
      name: name,
      email: email,
    );

    return _currentUser!;
  }

  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 500));
    _currentUser = null;
  }
}
