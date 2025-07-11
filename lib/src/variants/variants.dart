part 'chinese.dart';
part 'origin.dart';

sealed class WerewolfVariants {
  const WerewolfVariants._();

  factory WerewolfVariants(int bytecode) {
    if (bytecode > 0xFF) {
      throw ArgumentError.value(
        bytecode,
        "bytecode",
        "Illegal bytecode length.",
      );
    }

    final int variants = (bytecode & 0xF0) >> 4, expansion = bytecode & 0x0F;

    switch (variants) {
      case 0x0:
        return OriginWerewolf(newMoon: expansion & 1 == 1);
      case 0x1:
        return ChineseWerewolf();
      default:
        throw UnsupportedError(
          "No variants mapped for ${variants.toRadixString(16).toUpperCase()}",
        );
    }
  }

  int toByteCode();

  @override
  String toString();
}
