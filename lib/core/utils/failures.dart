import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure._(super.message);

  factory ServerFailure.generic() =>
      const ServerFailure._('Generic ServerFailure');
}

class CacheFailure extends Failure {
  const CacheFailure._(super.message);

  factory CacheFailure.generic() =>
      const CacheFailure._('Generic CacheFailure');
}
