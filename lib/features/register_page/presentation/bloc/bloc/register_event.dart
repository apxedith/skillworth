part of 'register_bloc.dart';

abstract class RegisterEvent {
  const RegisterEvent();
}

class RegisterPage1Event extends RegisterEvent {
  final SignUpModel signUpModel;
  RegisterPage1Event({required this.signUpModel});
}

class AddSkillPageEvent extends RegisterEvent {
  final AddSkillModel addSkillModel;

  AddSkillPageEvent({
    required this.addSkillModel,
  });
}
