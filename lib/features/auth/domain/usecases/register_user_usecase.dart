import 'package:customer_app/core/errors/failure.dart';
import 'package:customer_app/features/auth/domain/entities/user_to_register.dart';
import 'package:customer_app/features/auth/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';

class RegisterUserUseCase {
  final AuthenticationRepository _authenticationRepository;

  RegisterUserUseCase(this._authenticationRepository);

  Future<Either<Failure, Unit>> call(UserForRegister userForRegister) async {
    return await _authenticationRepository.registerUser(userForRegister);
  }
}
