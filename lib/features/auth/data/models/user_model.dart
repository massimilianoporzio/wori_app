import 'package:json_annotation/json_annotation.dart';
import 'package:wori_app/features/auth/domain/entities/user_entity.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends UserEntity {
  UserModel({
    required super.id,
    required super.email,
    required super.username,
  });
}
