enum Routine {
  initial, daytime, night
}

typedef GameRoundInfo = ({int day, Routine routine});

final class GameRound {
  final bool startAtDaytime;

  Routine _routine = Routine.initial;
  int _day = 0;

  GameRound([this.startAtDaytime = false]);

  GameRoundInfo get current => (day: _day, routine: _routine);

  void proceed() {
    switch (_routine) {
      case Routine.initial:
        _day++;
        _routine = startAtDaytime ? Routine.daytime : Routine.night;
        break;
      case Routine.night:
        _day++;
        _routine = Routine.daytime;
        break;
      case Routine.daytime:
        _routine = Routine.night;
        break;
    }
  }

  void reset() {
    _day = 0;
    _routine = Routine.initial;
  }
}