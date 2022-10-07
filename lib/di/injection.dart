// coverage:ignore-file
import 'package:blog_club/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit()
void configureDependencies() => $initGetIt(
      GetIt.instance,
    );
