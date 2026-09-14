class TabletopException implements Exception {
  final String message;
  final Object? cause;

  TabletopException(this.message, [this.cause]);

  @override
  String toString() {
    if (cause != null) {
      return 'TabletopException: $message (Underlying: $cause)';
    }
    return 'TabletopException: $message';
  }
}
