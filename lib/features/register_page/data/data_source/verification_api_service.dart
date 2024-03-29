import 'package:dio/dio.dart';
import 'package:skillworth_mobile/core/constants/constants.dart';
import 'package:skillworth_mobile/features/register_page/data/model/verfication_model.dart';

class VerificationApiService {
  final Dio dio;
  VerificationApiService(this.dio);

  Future<Response> verify(VerificationModel verificationModel) async {
    dio.options.connectTimeout = const Duration(seconds: 10);
    final response = await dio.post(
      registerPage1Url,
      data: verificationModel.toFormData(),
      options: Options(
        headers: {
          'Content-Type': 'multipart/form-data',
        },
      ),
    );
    return Response(
      data: response.data,
      requestOptions: response.requestOptions,
      headers: response.headers,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );
  }
}
