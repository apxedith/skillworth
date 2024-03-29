import 'package:skillworth_mobile/core/datastate/data_state_response.dart';

abstract class SignUpRepository {
  Future<DataResponseState> signUp();
}
