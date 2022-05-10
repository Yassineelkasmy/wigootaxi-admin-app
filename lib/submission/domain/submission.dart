import 'package:freezed_annotation/freezed_annotation.dart';

part 'submission.freezed.dart';

@freezed
class Submission with _$Submission {
  const factory Submission({
    required String id,
    required String profil,
    required String cin_devant,
    required String cin_arriere,
    required String permis_devant,
    required String permis_arriere,
    required String cartegrisse_devant,
    required String cartegrisse_arriere,
  }) = _Submission;
}
