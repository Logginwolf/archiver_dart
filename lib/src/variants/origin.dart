part of 'variants.dart';

final class OriginWerewolf implements WerewolfVariants {
  final bool newMoon;

  const OriginWerewolf({required this.newMoon});

  @override
  int toByteCode() {
    int base = 0;

    if (newMoon) {
      base |= 1;
    }

    return base;
  }
  
}
