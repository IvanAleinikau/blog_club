// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/dara_source_impl/remote/firebase_auth_data_source_impl.dart'
    as _i5;
import '../data/data_source/remote/firebase_auth_data_source.dart' as _i4;
import '../data/repository/user_repository_impl.dart' as _i8;
import '../domain/repository/user_repository.dart' as _i7;
import '../domain/usecase/auth/login_use_case.dart' as _i9;
import '../domain/usecase/auth/logout_use_case.dart' as _i10;
import '../presentation/bloc/auth/authentication_status_cubit.dart' as _i11;
import '../presentation/bloc/splash/splash_cubit.dart' as _i6;
import 'module/firebase.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final firebaseModule = _$FirebaseModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseModule.firebaseAuthInstance());
  gh.factory<_i4.FirebaseAuthDataSource>(() =>
      _i5.FirebaseAuthDataSourceImpl(firebaseAuth: get<_i3.FirebaseAuth>()));
  gh.factory<_i6.SplashCubit>(() => _i6.SplashCubit());
  gh.factory<_i7.UserRepository>(() => _i8.UserRepositoryImpl(
      firebaseAuthDataSource: get<_i4.FirebaseAuthDataSource>()));
  gh.factory<_i9.LoginUseCase>(
      () => _i9.LoginUseCase(repository: get<_i7.UserRepository>()));
  gh.factory<_i10.LogoutUseCase>(
      () => _i10.LogoutUseCase(repository: get<_i7.UserRepository>()));
  gh.factory<_i11.AuthenticationStatusCubit>(() =>
      _i11.AuthenticationStatusCubit(loginUseCase: get<_i9.LoginUseCase>()));
  return get;
}

class _$FirebaseModule extends _i12.FirebaseModule {}
