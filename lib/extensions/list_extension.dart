extension ListX on List<dynamic> {
  void addIfNotNull<T>(T? value) {
    if (value != null) {
      add(value);
    }
  }
}
