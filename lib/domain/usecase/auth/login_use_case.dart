import 'package:blog_club/domain/model/firebase/firebase_auth_response.dart';
import 'package:blog_club/domain/model/login/login_params.dart';
import 'package:blog_club/domain/repository/user_repository.dart';
import 'package:blog_club/domain/usecase/use_case.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LoginUseCase extends UseCase<FirebaseAuthResponse, LoginParams> {
  final UserRepository repository;

  LoginUseCase({
    required this.repository,
  });

  @override
  Future<FirebaseAuthResponse> call(LoginParams params) {
    return repository.loginWithEmail(params);
  }
}
