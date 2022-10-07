import 'package:blog_club/presentation/bloc/auth/authentication_status_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AuthenticationStatusCubit extends Cubit<AuthenticationStatusState> {
  AuthenticationStatusCubit() : super(AuthenticationStatusState());
}
