import 'package:customer_app/core/errors/failure.dart';
import 'package:customer_app/features/auth/domain/entities/user_to_register.dart';
import 'package:customer_app/features/auth/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';

class AuthenticationRepositoryImp extends AuthenticationRepository {
  @override
  Future<Either<Failure, Unit>> getNewPassword(String email) {
    // TODO: implement getNewPassword
    return Future.delayed(
      const Duration(seconds: 3),
      () {
        return right(unit);
      },
    );
  }

  @override
  Future<Either<Failure, Unit>> login(String email, String password,
      {bool rememberMe = false}) {
    // TODO: implement login
    return Future.delayed(
      const Duration(seconds: 3),
      () {
        return right(unit);
      },
    );
  }

  @override
  Future<Either<Failure, Unit>> registerUser(UserForRegister userForRegister) {
    // TODO: implement registerUser
    return Future.delayed(
      const Duration(seconds: 3),
      () {
        return right(unit);
      },
    );
  }
}
