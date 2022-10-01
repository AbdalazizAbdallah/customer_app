import 'data_model.dart';

class BaseAuthModel {
  late DataModel data;
  String? message;

  BaseAuthModel({
    required this.data,
    required this.message,
  });

  BaseAuthModel.fromJson(Map<String, dynamic> json) {
    data = DataModel.fromJson(json['data']);
    message = json['message'];
  }
}
