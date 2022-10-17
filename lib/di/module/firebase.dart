// coverage:ignore-file

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseModule {
  @LazySingleton()
  FirebaseAuth firebaseAuthInstance() => FirebaseAuth.instance;
}
