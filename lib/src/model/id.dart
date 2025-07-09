extension type Id._(int _value) {
  factory Id(int value) {
    if (value < 1) {
      throw RangeError("Id value must be positive integer.");
    }

    return Id._(value);
  }

  bool operator <(Id id) => this._value < id._value;

  bool operator >(Id id) => this._value > id._value;

  bool operator <=(Id id) => this._value <= id._value;

  bool operator >=(Id id) => this._value >= id._value;

  int compareTo(Id id) => this._value.compareTo(id._value);
}
