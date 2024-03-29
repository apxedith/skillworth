import 'package:skillworth/core/datastate/data_state_response.dart';

abstract class VerificationRepository {
  Future<DataResponseState> verify();
}
