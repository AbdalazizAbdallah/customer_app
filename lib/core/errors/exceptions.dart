class ServerNotAvailableException implements Exception {
  String message;

  ServerNotAvailableException(this.message);

  @override
  String toString() {
    return message;
  }
}

class UserNotExistException extends ServerNotAvailableException {
  UserNotExistException(super.message);
}

class UserInvalidInfoException extends ServerNotAvailableException {
  UserInvalidInfoException(super.message);
}

class InternetNotAvailableException extends ServerNotAvailableException {
  InternetNotAvailableException(super.message);
}
