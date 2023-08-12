abstract class BaseException implements Exception {
  final String message;
  final Object origin;

  BaseException(this.message, this.origin);

  @override
  String toString() => 'message: $message | origin: $origin';
}

class ServerException extends BaseException {
  ServerException._(String message, Object origin) : super(message, origin);

  factory ServerException.generic(Object origin) =>
      ServerException._('Generic Server Failure', origin);
}

class CacheException extends BaseException {
  CacheException._(String message, Object origin) : super(message, origin);

  factory CacheException.generic(Object origin) =>
      CacheException._('Generic Cache Failure', origin);
}
