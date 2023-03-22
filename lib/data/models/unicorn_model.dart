import 'package:freezed_annotation/freezed_annotation.dart';

part 'unicorn_model.freezed.dart';
part 'unicorn_model.g.dart';

@freezed
class Unicorn with _$Unicorn {
  const factory Unicorn({
    String? name,
    int? age,
    String? color,
  }) = _Unicorn;

  factory Unicorn.fromJson(Map<String, dynamic> json) =>
      _$UnicornFromJson(json);
}
