extension StringNullX on String? {
  String get orEmpty => this ?? '';
}
