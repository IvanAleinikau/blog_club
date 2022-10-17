import 'package:blog_club/data/data_source/remote/firebase_auth_data_source.dart';
import 'package:blog_club/domain/model/firebase/firebase_auth_response.dart';
import 'package:blog_club/domain/model/login/login_params.dart';
import 'package:blog_club/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final FirebaseAuthDataSource firebaseAuthDataSource;

  UserRepositoryImpl({
    required this.firebaseAuthDataSource,
  });

  @override
  Future<FirebaseAuthResponse> loginWithEmail(LoginParams params) async {
    return await firebaseAuthDataSource.signInWithEmailAndPassword(params);
  }

  @override
  Future<void> logout() async {
    await firebaseAuthDataSource.logout();
  }
}
