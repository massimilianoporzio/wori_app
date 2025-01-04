import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:wori_app/core/errors/failure.dart';
import 'package:wori_app/core/usecase/usecase.dart';
import 'package:wori_app/features/auth/domain/entities/user_entity.dart';
import 'package:wori_app/features/auth/domain/repositories/auth_repository.dart';

class LoginUsecase extends UsecaseWithParams<UserEntity, LoginUserParams> {
  final AuthRepository repository;

  LoginUsecase({required this.repository});

  @override
  Future<Either<Failure, UserEntity>> call(LoginUserParams params) {
    return repository.login(
      params.email,
      params.password,
    );
  }
}

class LoginUserParams extends Equatable {
  final String email;
  final String password;

  const LoginUserParams({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];

  @override
  bool? get stringify => true;
}
