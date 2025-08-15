import 'package:video_call_app/core/typedef.dart';

abstract class UsecaseWithParams<Type, Params> {
  UsecaseWithParams();
  ResultFuture<Type> call(Params params);
}

abstract class UsecaseWithoutParams<Type> {
  UsecaseWithoutParams();
  ResultFuture<Type> call();
}

abstract class UseCase<T> {
  Future<T> call();
}
