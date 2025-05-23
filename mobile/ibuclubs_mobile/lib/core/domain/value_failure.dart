class ValueFailure {
  final String error;

  const ValueFailure(this.error);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueFailure && other.error == error;
  }

  @override
  int get hashCode => error.hashCode;

  @override
  String toString() => 'Error: $error';
}
