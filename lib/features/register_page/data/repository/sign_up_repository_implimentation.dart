import 'package:dio/dio.dart';
import 'package:skillworth_mobile/core/datastate/data_state_response.dart';
import 'package:skillworth_mobile/features/register_page/data/data_source/sign_up_api_service.dart';
import 'package:skillworth_mobile/features/register_page/data/model/sign_up_model.dart';
import 'package:skillworth_mobile/features/register_page/domain/repository/sign_up_repository.dart';

class SignUpRepositoryImpli implements SignUpRepository {
  final SignUpApiService signUpApiService;
  final SignUpModel signUpModel;
  SignUpRepositoryImpli({
    required this.signUpApiService,
    required this.signUpModel,
  });
  @override
  Future<DataResponseState> signUp() async {
    try {
      final httpResponse = await signUpApiService.signUp(signUpModel);
      if (httpResponse.statusCode == 200) {
        return DataResponseSuccess(
          httpResponse.data!,
          httpResponse,
        );
      } else {
        return DataResponseFailed(
          DioException(
            requestOptions: httpResponse.requestOptions,
            error: httpResponse.statusMessage,
            response: httpResponse,
            type: DioExceptionType.badResponse,
          ),
        );
      }
    } on DioException catch (e) {
      print(e);
      return DataResponseFailed(e);
    }
  }
}
