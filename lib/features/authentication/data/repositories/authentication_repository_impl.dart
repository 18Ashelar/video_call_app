import 'package:dio/dio.dart';
import 'package:video_call_app/core/data_state.dart';
import 'package:video_call_app/core/error/exception.dart' show ServerException;
import 'package:video_call_app/core/error/failure.dart';
import 'package:video_call_app/core/typedef.dart';
import 'package:video_call_app/features/authentication/domain/entities/login_user_request_entity.dart';
import 'package:video_call_app/features/authentication/domain/entities/user_data_entity.dart';
import 'package:video_call_app/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:video_call_app/features/authentication/data/data_sources/authentication_data_source.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataSource authenticationDataSource;
  AuthenticationRepositoryImpl(this.authenticationDataSource);

  @override
  ResultFuture<UserDataEntity> login(
    LoginUserRequestEntity loginUserRequestEntity,
  ) async {
    try {
      final userData = await authenticationDataSource.login(
        loginUserRequestEntity,
      );
      return DataSuccess(UserDataEntity());
    } on ServerException catch (e) {
      return DataFailed(ServerFailure(e.message ?? ""));
    } on DioException catch (e) {
      return DataFailed(ServerFailure(e.message ?? ""));
      //return DataFailed(ServerFailure(DioErrorHandler.handleDioError(e)));
    } catch (e) {
      return DataFailed(ServerFailure(e.toString()));
    }
  }
}
