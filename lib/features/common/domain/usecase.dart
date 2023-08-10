import 'package:equatable/equatable.dart';
import 'package:untitled3/core/utils/failures.dart';

import '../../../core/utils/either.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
