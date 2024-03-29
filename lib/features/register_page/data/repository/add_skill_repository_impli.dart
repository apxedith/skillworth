import 'package:dio/dio.dart';
import 'package:skillworth_mobile/core/datastate/data_state_response.dart';
import 'package:skillworth_mobile/features/register_page/data/data_source/add_skill_api_service.dart';
import 'package:skillworth_mobile/features/register_page/data/model/add_skill_model.dart';
import 'package:skillworth_mobile/features/register_page/domain/repository/add_skill_repository.dart';

class AddSkillRepositoryImpli implements AddSkillRepository {
  final AddSkillApiService addSkillApiService;
  final AddSkillModel addSkillModel;
  AddSkillRepositoryImpli({
    required this.addSkillApiService,
    required this.addSkillModel,
  });
  @override
  Future<DataResponseState> addSkill() async {
    try {
      final httpResponse = await addSkillApiService.addSkill(addSkillModel);
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
