import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';
part 'page.g.dart';

@freezed
class Page with _$Page {
  const factory Page({
    int? size,
    int? totalElements,
    int? totalPages,
    int? number,
  }) = _Page;

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
}
