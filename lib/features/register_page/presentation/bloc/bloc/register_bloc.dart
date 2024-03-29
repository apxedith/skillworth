import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skillworth_mobile/core/datastate/data_state_response.dart';
import 'package:skillworth_mobile/features/register_page/data/data_source/add_skill_api_service.dart';
import 'package:skillworth_mobile/features/register_page/data/data_source/sign_up_api_service.dart';
import 'package:skillworth_mobile/features/register_page/data/model/add_skill_model.dart';
import 'package:skillworth_mobile/features/register_page/data/model/sign_up_model.dart';
import 'package:skillworth_mobile/features/register_page/data/repository/add_skill_repository_impli.dart';
import 'package:skillworth_mobile/features/register_page/data/repository/sign_up_repository_implimentation.dart';
import 'package:skillworth_mobile/features/register_page/domain/use_case/add_skill_usecase.dart';
import 'package:skillworth_mobile/features/register_page/domain/use_case/sign_up_usecase.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) {});
    on<RegisterPage1Event>(registerPage1Event);
    on<AddSkillPageEvent>(addSkillPageEvent);
  }

  FutureOr<void> registerPage1Event(
      RegisterPage1Event event, Emitter<RegisterState> emit) async {
    final SignUpApiService signUpApiService = SignUpApiService(Dio());
    final SignUpUseCase signUpUseCase = SignUpUseCase(SignUpRepositoryImpli(
        signUpApiService: signUpApiService, signUpModel: event.signUpModel));
    final dataState = await signUpUseCase();
    print(dataState.response);
    if (dataState is DataResponseSuccess) {
      emit(RegisterPage1SuccessState());
    } else {
      emit(RegisterPage1ErrorState());
    }
  }

  FutureOr<void> addSkillPageEvent(
      AddSkillPageEvent event, Emitter<RegisterState> emit) async {
    final AddSkillApiService addSkillApiService = AddSkillApiService(Dio());
    final AddSkillUseCase addSkillUseCase = AddSkillUseCase(
        AddSkillRepositoryImpli(
            addSkillApiService: addSkillApiService,
            addSkillModel: event.addSkillModel));
    final dataState = await addSkillUseCase();
    print(dataState.response);
    if (dataState is DataResponseSuccess) {
      emit(AddSkillPageSuccessState());
    } else {
      emit(AddSkillPageerrorState());
    }
  }
}
