import 'package:equatable/equatable.dart';

class AddSkillEntity extends Equatable {
  final String userId;
  final String primary_skill;
  final List<String> sub_skills;

  AddSkillEntity({
    required this.userId,
    required this.primary_skill,
    required this.sub_skills,
  });
  @override
  List<Object?> get props => [
        userId,
        primary_skill,
        sub_skills,
      ];
}
