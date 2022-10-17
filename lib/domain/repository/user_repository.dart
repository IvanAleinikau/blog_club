import 'package:blog_club/domain/model/firebase/firebase_auth_response.dart';
import 'package:blog_club/domain/model/login/login_params.dart';

abstract class UserRepository {
  Future<FirebaseAuthResponse> loginWithEmail(LoginParams params);

  Future<void> logout();

  // Future<void> saveUser();
  //
  // Future<void> getUser();
  //
  // Stream<void> watchUser();
  //
  // Future<bool> isLoggedIn();
  //
  // Future<void> saveIsLoggedIn();
  //
  // Stream<bool> watchIsLoggedIn();
}
