import 'package:image_picker/image_picker.dart';

class SignUpEntity {
  final String? email;
  final String? password;
  final String? fullName;
  final String? phone;
  final String? occupation;
  final XFile? profile_img;

  const SignUpEntity({
    required this.email,
    required this.password,
    required this.fullName,
    required this.phone,
    required this.profile_img,
    required this.occupation,
  });
}
