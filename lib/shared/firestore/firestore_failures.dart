import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_failures.freezed.dart';

@freezed
class FireStoreFailure with _$FireStoreFailure {
  const factory FireStoreFailure.serverError() = ServerError;
}
