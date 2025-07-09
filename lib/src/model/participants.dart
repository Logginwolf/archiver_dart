import 'id.dart';

final class Participant {
  final AbstractId id;
  final String name;

  Participant(this.name, [this.id = const AutoId()]);
}