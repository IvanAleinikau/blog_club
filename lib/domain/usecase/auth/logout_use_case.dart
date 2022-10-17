import 'package:blog_club/common/constants/nothing.dart';
import 'package:blog_club/domain/repository/user_repository.dart';
import 'package:blog_club/domain/usecase/use_case.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LogoutUseCase extends UseCase<void, Nothing> {
  final UserRepository repository;

  LogoutUseCase({
    required this.repository,
  });

  @override
  Future<void> call(Nothing params) async {
    await repository.logout();
  }
}
