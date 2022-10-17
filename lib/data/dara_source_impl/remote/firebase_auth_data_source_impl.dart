import 'package:blog_club/common/constants/firebase_constants.dart';
import 'package:blog_club/common/enums/firebase.dart';
import 'package:blog_club/common/firebase/firebase_exception_code.dart';
import 'package:blog_club/common/logger.dart';
import 'package:blog_club/data/data_source/remote/firebase_auth_data_source.dart';
import 'package:blog_club/domain/model/firebase/firebase_auth_response.dart';
import 'package:blog_club/domain/model/login/login_params.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FirebaseAuthDataSource)
class FirebaseAuthDataSourceImpl implements FirebaseAuthDataSource {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthDataSourceImpl({
    required this.firebaseAuth,
  });

  @override
  Future<FirebaseAuthResponse> createUserWithEmailAndPassword(
    LoginParams loginParams,
  ) async {
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: loginParams.email,
        password: loginParams.password,
      );
      logger.e(credential);
      return FirebaseAuthResponse(type: FirebaseResponseType.successful);
    } on FirebaseAuthException catch (e) {
      return FirebaseAuthResponse(
        type: FirebaseResponseType.warning,
        message: FirebaseCreateUserCode.getMessageFromCreateUser(e.code),
      );
    } catch (e) {
      logger.e('Create user with email and password:\n$e');
      return FirebaseAuthResponse(
        type: FirebaseResponseType.error,
        message: SOMETHING_GONE_WRONG,
      );
    }
  }

  @override
  Future<FirebaseAuthResponse> signInWithEmailAndPassword(
    LoginParams loginParams,
  ) async {
    try {
      final credential = await firebaseAuth.signInWithEmailAndPassword(
        email: loginParams.email,
        password: loginParams.password,
      );
      logger.e(credential);
      return FirebaseAuthResponse(type: FirebaseResponseType.successful);
    } on FirebaseAuthException catch (e) {
      return FirebaseAuthResponse(
        type: FirebaseResponseType.warning,
        message: FirebaseCreateUserCode.getMessageFromSignIn(e.code),
      );
    } catch (e) {
      logger.e('Sign in with email and password:\n$e');
      return FirebaseAuthResponse(
        type: FirebaseResponseType.error,
        message: SOMETHING_GONE_WRONG,
      );
    }
  }

  @override
  Future<void> logout() async {
    await firebaseAuth.signOut();
  }
}
