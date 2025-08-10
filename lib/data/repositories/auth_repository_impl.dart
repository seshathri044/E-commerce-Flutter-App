// lib/data/repositories/auth_repository_impl.dart

import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource dataSource;

  AuthRepositoryImpl(this.dataSource);

  @override
  Future<User?> getCurrentUser() {
    return dataSource.getCurrentUser();
  }

  @override
  Future<User> login(String email, String password) {
    return dataSource.login(email, password);
  }

  @override
  Future<User> register(String name, String email, String password) {
    return dataSource.register(name, email, password);
  }

  @override
  Future<void> logout() {
    return dataSource.logout();
  }

  @override
  Stream<User?> get authStateChanges {
    return Stream.periodic(const Duration(seconds: 1), (i) => AuthDataSource.currentUser);
  }
}