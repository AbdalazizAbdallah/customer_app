import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object?> get props => [message];
}

class UserNotExistFailure extends Failure {
  const UserNotExistFailure(super.message);
}

class UnknownFailure extends Failure {
  const UnknownFailure(super.message);
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
