part of 'models.dart';

class FailureModel {
  final String code;
  final String message;
  final Object? data;

  FailureModel({required this.code, required this.message, this.data});

  factory FailureModel.generic() {
    return FailureModel(code: '', message: 'An error has occurred');
  }
}
