import 'package:skillworth_mobile/core/datastate/data_state_response.dart';
import 'package:skillworth_mobile/core/usecase/use_case.dart';
import 'package:skillworth_mobile/features/register_page/domain/repository/add_skill_repository.dart';

class AddSkillUseCase implements UseCase<DataResponseState, void> {
  final AddSkillRepository addSkillRepository;
  AddSkillUseCase(this.addSkillRepository);
  @override
  Future<DataResponseState> call({void params}) {
    return addSkillRepository.addSkill();
  }
}
