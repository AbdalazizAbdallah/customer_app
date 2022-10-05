import 'package:customer_app/core/errors/failure.dart';
import 'package:customer_app/features/auth/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';

class GetNewPasswordUseCase {
  final AuthenticationRepository _authenticationRepository;

  GetNewPasswordUseCase(this._authenticationRepository);

  Future<Either<Failure, Unit>> call(String email) async {
    return await _authenticationRepository.getNewPassword(email);
  }
}
