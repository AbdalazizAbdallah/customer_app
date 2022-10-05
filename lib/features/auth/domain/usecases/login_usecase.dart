import 'package:customer_app/core/errors/failure.dart';
import 'package:customer_app/features/auth/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase {
  final AuthenticationRepository _authenticationRepository;

  LoginUseCase(this._authenticationRepository);

  Future<Either<Failure, Unit>> call(String email, String password,
      {bool rememberMe = false}) async {
    return await _authenticationRepository.login(email, password,
        rememberMe: rememberMe);
  }
}
