import 'package:skillworth_mobile/core/datastate/data_state_response.dart';
import 'package:skillworth_mobile/core/usecase/use_case.dart';
import 'package:skillworth_mobile/features/register_page/domain/repository/verification_repository.dart';

class VerificationUseCase implements UseCase<DataResponseState, void> {
  final VerificationRepository verificationRepository;
  VerificationUseCase(this.verificationRepository);
  @override
  Future<DataResponseState> call({void params}) {
    return verificationRepository.verify();
  }
}
