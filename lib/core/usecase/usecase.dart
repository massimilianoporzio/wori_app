import 'package:fpdart/fpdart.dart';
import 'package:wori_app/core/errors/failure.dart';

abstract class UsecaseWithParams<Type, Params> {
  const UsecaseWithParams();
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UseCaseWithoutParams<Type> {
  const UseCaseWithoutParams();
  Future<Either<Failure, Type>> call();
}
