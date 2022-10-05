import 'package:customer_app/core/constants/strings_app.dart';
import 'package:customer_app/core/errors/exceptions.dart';
import 'package:customer_app/core/storages/remote_storage/remote_connection_dio.dart';
import 'package:customer_app/core/utils/onesignal_config.dart';
import 'package:customer_app/features/auth/data/model/data_model.dart';
import 'package:customer_app/features/auth/domain/entities/user_to_register.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class RemoteDataSourcesAbstract {
  Future<DataModel> registerUser(UserForRegister userForRegister);

  Future<DataModel> login(String email, String password);

  Future<void> getNewPassword(String email);
}

class RemoteDataSources extends RemoteDataSourcesAbstract {
  RemoteConnectionDio _remoteConnectionDio;

  RemoteDataSources(this._remoteConnectionDio);

  @override
  Future<void> getNewPassword(String email) {
    throw UnimplementedError();
  }

  @override
  Future<DataModel> login(String email, String password) async {
    try {
      String playerId = await OnesignalConfig.getOnesignalPlayerId() ?? '';

      var response = await _remoteConnectionDio.dio.post(
        dotenv.get(StringsApp.loginPath),
        data: {
          'email': email,
          'password': password,
          'onesignal_id': playerId,
        },
      );

      print('${response.statusCode}');
      if (response.statusCode == 200) {
        return DataModel.fromJson(response.data['data']);
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
  Future<DataModel> registerUser(UserForRegister userForRegister) async {
    try {
      String playerId = await OnesignalConfig.getOnesignalPlayerId() ?? '';
      var response = await _remoteConnectionDio.dio.post(
        dotenv.get(StringsApp.registerPath),
        data: {
          'name': userForRegister.name,
          'email': userForRegister.email,
          'mobile': userForRegister.mobile,
          'password_confirmation': userForRegister.password,
          'password': userForRegister.password,
          'onesignal_id': playerId,
        },
      );

      if (response.statusCode == 201) {
        return DataModel.fromJson(response.data['data']);
      } else {
        throw ServerNotAvailableException(response.data['message']);
      }
    } on DioError catch (e) {
      if (e.response?.statusCode == 422) {
        throw ServerNotAvailableException(e.response?.data['message']);
      } else {
        throw UnknownException('Unknown Error');
      }
    }
  }
}
