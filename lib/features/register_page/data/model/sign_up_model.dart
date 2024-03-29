import 'package:dio/dio.dart';

import '../../domain/entity/sign_up_entity.dart';

class SignUpModel extends SignUpEntity {
  const SignUpModel({
    required super.email,
    required super.password,
    required super.fullName,
    required super.phone,
    required super.profile_img,
    required super.occupation,
  });

  FormData toFormData() {
    return FormData.fromMap(
      {
        'email': email,
        'password': password,
        'fullName': fullName,
        'phone': phone,
        'occupation': occupation,
        'profile_img': (profile_img != null)
            ? MultipartFile.fromFileSync(
                profile_img!.path,
                filename: profile_img!.name,
              )
            : null,
      },
    );
  }
}
