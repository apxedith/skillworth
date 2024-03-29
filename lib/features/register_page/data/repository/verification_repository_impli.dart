import 'package:dio/dio.dart';
import 'package:skillworth_mobile/core/datastate/data_state_response.dart';
import 'package:skillworth_mobile/features/register_page/data/data_source/verification_api_service.dart';
import 'package:skillworth_mobile/features/register_page/data/model/verfication_model.dart';
import 'package:skillworth_mobile/features/register_page/domain/repository/verification_repository.dart';

class VerificationRepositoryImpli implements VerificationRepository {
  final VerificationApiService verificationApiService;
  final VerificationModel verificationModel;
  VerificationRepositoryImpli({
    required this.verificationApiService,
    required this.verificationModel,
  });
  @override
  Future<DataResponseState> verify() async {
    try {
      final httpResponse =
          await verificationApiService.verify(verificationModel);
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
