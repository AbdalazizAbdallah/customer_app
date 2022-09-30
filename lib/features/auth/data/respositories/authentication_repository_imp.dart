import 'package:customer_app/core/errors/exceptions.dart';
import 'package:customer_app/core/errors/failure.dart';
import 'package:customer_app/features/auth/data/datasources/remote_data_sources.dart';
import 'package:customer_app/features/auth/data/model/base_auth_model.dart';
import 'package:customer_app/features/auth/domain/entities/user_to_register.dart';
import 'package:customer_app/features/auth/domain/repositories/authentication_repository.dart';
import 'package:dartz/dartz.dart';

class AuthenticationRepositoryImp extends AuthenticationRepository {
  RemoteDataSourcesAbstract _remoteDataSources;

  AuthenticationRepositoryImp(this._remoteDataSources);

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
      {bool rememberMe = false}) async {
    // TODO: implement login

    try {
      BaseAuthModel baseAuthModel =
          await _remoteDataSources.login(email, password);
      return right(unit);
    } on UserInvalidInfoException catch (e) {
      return left(UserInvalidInfoFailure(e.message));
    } on ServerNotAvailableException catch (e) {
      return left(ServerNotAvailableFailure(e.message));
    }
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
