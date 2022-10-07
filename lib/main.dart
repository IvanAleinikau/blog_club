import 'package:blog_club/common/constants/app_constants.dart';
import 'package:blog_club/di/getters.dart';
import 'package:blog_club/di/injection.dart';
import 'package:blog_club/firebase_options.dart';
import 'package:blog_club/presentation/bloc/auth/authentication_status_cubit.dart';
import 'package:blog_club/presentation/bloc/splash/splash_cubit.dart';
import 'package:blog_club/presentation/route/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  configureDependencies();
  runApp(const BlogClub());
}

class BlogClub extends StatefulWidget {
  const BlogClub({Key? key}) : super(key: key);

  @override
  State<BlogClub> createState() => _BlogClubState();
}

class _BlogClubState extends State<BlogClub> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        _splashCubit,
        _authenticationStatusCubit,
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: APP_TITLE,
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }

  final BlocProvider _splashCubit = BlocProvider<SplashCubit>(
    create: (context) => splashCubit,
  );

  final BlocProvider _authenticationStatusCubit = BlocProvider<AuthenticationStatusCubit>(
    create: (context) => authenticationStatusCubit,
  );
}
