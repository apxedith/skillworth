part of 'register_bloc.dart';

abstract class RegisterState {
  const RegisterState();
}

final class RegisterInitial extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class RegisterPage1SuccessState extends RegisterState {}

class RegisterPage1ErrorState extends RegisterState {}

class AddSkillPageSuccessState extends RegisterState {}

class AddSkillPageerrorState extends RegisterState {}
