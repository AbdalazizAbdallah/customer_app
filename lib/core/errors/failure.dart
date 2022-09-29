import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  List<Object?> get props => [message];
}

class UserNotExistFailure extends Failure {
  const UserNotExistFailure(super.message);
}

class UserInvalidInfoFailure extends Failure {
  const UserInvalidInfoFailure(super.message);
}

class InternetNotAvailableFailure extends Failure {
  const InternetNotAvailableFailure(super.message);
}

class ServerNotAvailableFailure extends Failure {
  const ServerNotAvailableFailure(super.message);
}
