sealed class Availability {
  const Availability._();
}

abstract base class Alive implements Availability {
  const Alive();
}

abstract base class Eliminated implements Availability {
  const Eliminated();
}