import 'package:skillworth/features/register_page/domain/entity/add_skill_entity.dart';

class AddSkillModel extends AddSkillEntity {
  AddSkillModel({
    required super.userId,
    required super.primary_skill,
    required super.sub_skills,
  });

  factory AddSkillModel.fromJson(Map<String, dynamic> json) {
    return AddSkillModel(
      userId: json['userId'] as String,
      primary_skill: json['primary_skill'] as String,
      sub_skills: json['sub_skills'] as List<String>,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'primary_skill': primary_skill,
      'sub_skills': sub_skills,
    };
  }
}
