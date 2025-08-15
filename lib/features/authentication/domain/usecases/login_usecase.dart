import 'package:equatable/equatable.dart';
import 'package:video_call_app/core/typedef.dart';
import 'package:video_call_app/core/usecase.dart';
import 'package:video_call_app/features/authentication/domain/entities/login_user_request_entity.dart';
import 'package:video_call_app/features/authentication/domain/entities/user_data_entity.dart';
import 'package:video_call_app/features/authentication/domain/repositories/authentication_repository.dart';

class LoginUseCase
    implements UsecaseWithParams<UserDataEntity, LoginUserParams> {
  final AuthenticationRepository authenticationRepository;

  LoginUseCase(this.authenticationRepository);

  @override
  ResultFuture<UserDataEntity> call(params) async {
    return await authenticationRepository.login(params.loginUserRequestEntity);
  }
}

class LoginUserParams extends Equatable {
  final LoginUserRequestEntity loginUserRequestEntity;

  const LoginUserParams({required this.loginUserRequestEntity});

  @override
  List<Object> get props => [loginUserRequestEntity];
}
