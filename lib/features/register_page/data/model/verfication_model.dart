import 'package:dio/dio.dart';
import 'package:skillworth/features/register_page/domain/entity/verification_entity.dart';

class VerificationModel extends VerificationEntity {
  const VerificationModel({
    required super.userId,
    required super.adhaar,
    required super.dl,
    required super.passport,
    required super.pan,
  });
  FormData toFormData() {
    return FormData.fromMap(
      {
        'userId': userId,
        'adhaar': (adhaar != null)
            ? MultipartFile.fromFileSync(
                adhaar!.path,
                filename: adhaar!.name,
              )
            : null,
        'pan': (pan != null)
            ? MultipartFile.fromFileSync(
                pan!.path,
                filename: pan!.name,
              )
            : null,
        'dl': (dl != null)
            ? MultipartFile.fromFileSync(
                dl!.path,
                filename: dl!.name,
              )
            : null,
        'passport': (passport != null)
            ? MultipartFile.fromFileSync(
                passport!.path,
                filename: passport!.name,
              )
            : null,
      },
    );
  }
}
