class ServerNotAvailableException implements Exception {}

class UserNotExistException extends ServerNotAvailableException {}

class UserInvalidInfoException extends ServerNotAvailableException {}

class InternetNotAvailableException extends ServerNotAvailableException {}
