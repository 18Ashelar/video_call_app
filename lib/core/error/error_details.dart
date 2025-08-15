import 'package:equatable/equatable.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ErrorDetails extends Equatable {
  final String? message;
  final int? code;

  const ErrorDetails({
    this.message,
    this.code,
  });

  @override
  bool get stringify => true;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'message': message,
      'code': code,
    };
  }

  factory ErrorDetails.fromJson(Map<String, dynamic> map) {
    return ErrorDetails(
      message: map['message'] != null ? map['message'] as String : null,
      code: map['code'] != null ? map['code'] as int : null,
    );
  }

  @override
  List<Object?> get props => [message, code];
}
