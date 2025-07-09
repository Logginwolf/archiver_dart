sealed class AbstractId {
  const AbstractId._();

  int? get value;

  @override
  String toString();
}

final class Id implements AbstractId, Comparable<Id> {
  @override
  final int value;

  Id(this.value) {
    if (value <= 0) {
      throw RangeError.range(
        value,
        1,
        null,
        "value",
        "ID value must be positive integer.",
      );
    }
  }

  @override
  int get hashCode => value;

  @override
  int compareTo(Id other) => value.compareTo(other.value);

  @override
  String toString() {
    return "$value";
  }
}

final class AutoId implements AbstractId {
  @override
  final int? value = null;

  const AutoId();

  @override
  int get hashCode => -1;

  @override
  String toString() {
    return "(Auto ID)";
  }
}
