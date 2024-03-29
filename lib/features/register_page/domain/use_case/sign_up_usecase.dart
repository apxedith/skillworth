import 'package:skillworth/core/datastate/data_state_response.dart';
import 'package:skillworth/core/usecase/use_case.dart';
import 'package:skillworth/features/register_page/domain/repository/sign_up_repository.dart';

class SignUpUseCase implements UseCase<DataResponseState, void> {
  final SignUpRepository _signUpRepository;
  SignUpUseCase(this._signUpRepository);
  @override
  Future<DataResponseState> call({void params}) {
    return _signUpRepository.signUp();
  }
}
