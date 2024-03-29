import 'package:dio/dio.dart';
import 'package:skillworth_mobile/core/constants/constants.dart';
import 'package:skillworth_mobile/features/register_page/data/model/add_skill_model.dart';

class AddSkillApiService {
  final Dio dio;
  AddSkillApiService(this.dio);

  Future<Response> addSkill(AddSkillModel addSkillModel) async {
    dio.options.connectTimeout = const Duration(seconds: 10);
    final response = await dio.post(
      registerPage1Url,
      data: addSkillModel,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
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
