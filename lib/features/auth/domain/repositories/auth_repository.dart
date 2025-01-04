import 'package:fpdart/fpdart.dart';
import 'package:wori_app/core/errors/failure.dart';
import 'package:wori_app/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login(String email, String password);

  Future<Either<Failure, UserEntity>> register(
      String username, String email, String password);
}
