import 'package:customer_app/core/constants/strings_app.dart';
import 'package:customer_app/core/errors/exceptions.dart';
import 'package:customer_app/core/storages/remote_storage/remote_connection_dio.dart';
import 'package:customer_app/features/auth/data/model/base_auth_model.dart';
import 'package:customer_app/features/auth/domain/entities/user_to_register.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class RemoteDataSourcesAbstract {
  Future<BaseAuthModel> registerUser(UserForRegister userForRegister);

  Future<BaseAuthModel> login(String email, String password);

  Future<void> getNewPassword(String email);
}

class RemoteDataSources extends RemoteDataSourcesAbstract {
  RemoteConnectionDio _remoteConnectionDio;

  RemoteDataSources(this._remoteConnectionDio);

  @override
  Future<void> getNewPassword(String email) {
    // TODO: implement getNewPassword
    throw UnimplementedError();
  }

  @override
  Future<BaseAuthModel> login(String email, String password) async {
    // TODO: implement login
    try {
      var response = await _remoteConnectionDio.dio.post(
        dotenv.get(StringsApp.loginPath),
        data: {'email': email, 'password': password, 'onesignal_id': '11'},
      );

      print('${response.statusCode}');
      if (response.statusCode == 200) {
        return BaseAuthModel.fromJson(response.data);
      } else {
        throw UserInvalidInfoException(response.data['message']);
      }
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        throw UserInvalidInfoException(e.response?.data['message']);
      } else {
        throw ServerNotAvailableException(e.response?.data['message']);
      }
    }
  }

  @override
  Future<BaseAuthModel> registerUser(UserForRegister userForRegister) async {
    try {
      var response = await _remoteConnectionDio.dio.post(
        dotenv.get(StringsApp.registerPath),
        data: {
          'name': userForRegister.name,
          'email': userForRegister.email,
          'mobile': userForRegister.mobile,
          'password_confirmation': userForRegister.password,
          'password': userForRegister.password,
          'onesignal_id': '11'
        },
      );

      if (response.statusCode == 201) {
        return BaseAuthModel.fromJson(response.data);
      } else {
        throw ServerNotAvailableException(response.data['message']);
      }
    } catch (exception) {
      rethrow;
    }
  }
}
