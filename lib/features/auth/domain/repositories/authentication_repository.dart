import 'package:customer_app/core/errors/failure.dart';
import 'package:customer_app/features/auth/domain/entities/user_to_register.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, Unit>> registerUser(UserForRegister userForRegister);

  Future<Either<Failure, Unit>> login(String email, String password,
      {bool rememberMe = false});

  Future<Either<Failure, Unit>> getNewPassword(String email);
}
