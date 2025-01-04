import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:wori_app/core/errors/failure.dart';
import 'package:wori_app/core/usecase/usecase.dart';
import 'package:wori_app/features/auth/domain/entities/user_entity.dart';
import 'package:wori_app/features/auth/domain/repositories/auth_repository.dart';

class LoginUsecase extends UsecaseWithParams<UserEntity, RegisterUserParams> {
  final AuthRepository repository;

  LoginUsecase({required this.repository});

  @override
  Future<Either<Failure, UserEntity>> call(params) {
    return repository.register(
      params.username,
      params.email,
      params.password,
    );
  }
}

class RegisterUserParams extends Equatable {
  final String username;
  final String email;
  final String password;

  const RegisterUserParams({
    required this.username,
    required this.email,
    required this.password,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [username, email, password];
}
