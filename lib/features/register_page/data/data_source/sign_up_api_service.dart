import 'package:dio/dio.dart';
import 'package:skillworth_mobile/core/constants/constants.dart';
import 'package:skillworth_mobile/features/register_page/data/model/sign_up_model.dart';

class SignUpApiService {
  final Dio dio;
  SignUpApiService(this.dio);

  Future<Response> signUp(SignUpModel signUpModel) async {
    // print(signUpModel.toFormData().fields);
    dio.options.connectTimeout = const Duration(seconds: 10);
    final response = await dio.post(
      // testSignUpurl,
      registerPage1Url,
      data: signUpModel.toFormData(),
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
