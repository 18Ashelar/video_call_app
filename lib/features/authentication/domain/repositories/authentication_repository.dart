import 'package:video_call_app/core/typedef.dart';
import 'package:video_call_app/features/authentication/domain/entities/login_user_request_entity.dart';
import 'package:video_call_app/features/authentication/domain/entities/user_data_entity.dart';

/// AuthenticationRepository is an abstract class defining the contract for operations
/// related to data within the domain layer.
/// Concrete implementations of this repository interface will be provided
/// in the data layer to interact with specific data sources (e.g., API, database).
abstract class AuthenticationRepository {
  ResultFuture<UserDataEntity> login(
    LoginUserRequestEntity loginUserRequestEntity,
  );
}
