import 'package:blog_club/common/constants/nothing.dart';

/// Base class for usecase implementations

abstract class UseCase<RESULT, PARAMS> {
  Future<RESULT> call(PARAMS params);
}

extension NonParamUseCase<RESULT> on UseCase<RESULT, Nothing> {
  /// As in flutter does not implemented method overloading - method name differs.
  Future<RESULT> executeNonParam() {
    return call(Nothing());
  }
}
