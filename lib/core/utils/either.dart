import 'package:freezed_annotation/freezed_annotation.dart';

part 'either.freezed.dart';

@freezed
class Either<F, T> with _$Either<F, T> {
  const factory Either.success(T data) = _Success<F, T>;
  const factory Either.failure(F failure) = _Failure<F, T>;
}
