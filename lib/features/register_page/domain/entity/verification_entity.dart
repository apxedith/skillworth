import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class VerificationEntity extends Equatable {
  final String userId;
  final XFile? adhaar;
  final XFile? dl;
  final XFile? passport;
  final XFile? pan;

  const VerificationEntity(
      {required this.userId,
      required this.adhaar,
      required this.dl,
      required this.passport,
      required this.pan});
  @override
  List<Object?> get props => [
        userId,
        adhaar,
        dl,
        passport,
        pan,
      ];
}
