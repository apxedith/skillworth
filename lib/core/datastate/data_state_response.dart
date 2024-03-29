import 'package:dio/dio.dart';

abstract class DataResponseState<T> {
  final T? data;
  final Response? response;
  final DioException? dioException;

  const DataResponseState({
    this.data,
    this.response,
    this.dioException,
  });
}

class DataResponseSuccess<T> extends DataResponseState<T> {
  const DataResponseSuccess(
    T data,
    Response response,
  ) : super(data: data, response: response);
}

class DataResponseStatusCode<T> extends DataResponseState<T> {
  const DataResponseStatusCode(
    Response? response,
  ) : super(
          response: response,
        );
}

class DataResponseFailed<T> extends DataResponseState<T> {
  const DataResponseFailed(
    DioException dioException,
  ) : super(
          dioException: dioException,
        );
}
