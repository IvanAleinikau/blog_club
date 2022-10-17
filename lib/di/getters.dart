// coverage:ignore-file
import 'package:blog_club/domain/usecase/auth/logout_use_case.dart';
import 'package:blog_club/presentation/bloc/auth/authentication_status_cubit.dart';
import 'package:blog_club/presentation/bloc/splash/splash_cubit.dart';
import 'package:get_it/get_it.dart';

SplashCubit get splashCubit => GetIt.I.get<SplashCubit>();

AuthenticationStatusCubit get authenticationStatusCubit => GetIt.I.get<AuthenticationStatusCubit>();

LogoutUseCase get logoutUseCase => GetIt.I.get<LogoutUseCase>();