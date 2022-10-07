import 'package:blog_club/presentation/bloc/splash/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState()) {
    onInit();
  }

  void onInit() {
    Future.delayed(const Duration(seconds: 1), () {
      emit(state.copyWith(isLoaded: true));
    });
    emit(state.copyWith(isLoaded: false));
  }
}
