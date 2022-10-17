import 'package:blog_club/common/enums/firebase.dart';
import 'package:blog_club/common/logger.dart';
import 'package:blog_club/domain/model/login/login_params.dart';
import 'package:blog_club/domain/usecase/auth/login_use_case.dart';
import 'package:blog_club/presentation/bloc/auth/authentication_status_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AuthenticationStatusCubit extends Cubit<AuthenticationStatusState> {
  final LoginUseCase loginUseCase;

  AuthenticationStatusCubit({
    required this.loginUseCase,
  }) : super(AuthenticationStatusState()) {
    onInit();
  }

  void onInit() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        logger.e('User ${user.uid}');
        emit(state.copyWith(isAuthorised: true));
      } else {
        logger.e('logout');
        emit(state.copyWith(isAuthorised: false));
      }
    });
  }

  void loginWithEmail(LoginParams params) async {
    emit(state.copyWith(isLoading: true));
    final result = await loginUseCase.call(params);
    // emit(state.copyWith(isLoading: false));
  }
}
