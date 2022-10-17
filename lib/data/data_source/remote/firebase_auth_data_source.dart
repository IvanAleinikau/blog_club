import 'package:blog_club/domain/model/firebase/firebase_auth_response.dart';
import 'package:blog_club/domain/model/login/login_params.dart';

abstract class FirebaseAuthDataSource {
  Future<FirebaseAuthResponse> createUserWithEmailAndPassword(
    LoginParams loginParams,
  );

  Future<FirebaseAuthResponse> signInWithEmailAndPassword(
    LoginParams loginParams,
  );

  Future<void> logout();
}
