import 'package:blog_club/common/constants/app_constants.dart';

extension StringNullableExtension on String? {
  bool get isNullOrEmpty => this == null || this == EMPTY_STRING;
}
