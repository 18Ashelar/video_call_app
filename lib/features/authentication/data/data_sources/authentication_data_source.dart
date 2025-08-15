// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';
import 'package:video_call_app/config/dio_client.dart';
import 'package:video_call_app/core/error/exception.dart';
import 'package:video_call_app/features/authentication/data/models/user_data_model.dart';
import 'package:video_call_app/features/authentication/domain/entities/login_user_request_entity.dart';

abstract class AuthenticationDataSource {
  Future<UserDataModel> login(LoginUserRequestEntity loginUserRequestEntity);
}

class AuthenticationDataSourceImpl implements AuthenticationDataSource {
  final DioClient dioClient;
  AuthenticationDataSourceImpl(this.dioClient);

  @override
  Future<UserDataModel> login(
    LoginUserRequestEntity loginUserRequestEntity,
  ) async {
    Response<Map<String, dynamic>> response = await dioClient.dio.post(
      'Constants.loginUrl',
      data: loginUserRequestEntity,
    );

    if (response.statusCode == 200) {
      //  UserDataModel  userData = UserDataModel.fromJson(response.data!);
      return UserDataModel();
    } else {
      throw ServerException(response.data?['error']['message']);
    }
  }
}
