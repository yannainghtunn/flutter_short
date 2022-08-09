import 'package:flutter/material.dart';

mixin ColorCodes<T> {
  Color _color = Colors.white;

  T color(Color color) {
    return (this.._color = color) as T;
  }

  T get green {
    return (this.._color = Colors.green) as T;
  }

  T get red {
    return (this.._color = Colors.red) as T;
  }

  T get redAccent {
    return (this.._color = Colors.redAccent) as T;
  }

  T get greenAccent {
    return (this.._color = Colors.greenAccent) as T;
  }

  T get yellow {
    return (this.._color = Colors.yellow) as T;
  }

  T get yellowAccent {
    return (this.._color = Colors.yellowAccent) as T;
  }

  T get purple {
    return (this.._color = Colors.purple) as T;
  }

  T get purpleAccent {
    return (this.._color = Colors.purpleAccent) as T;
  }

  T get blue {
    return (this.._color = Colors.blue) as T;
  }

  T get blueAccent {
    return (this.._color = Colors.blueAccent) as T;
  }

  T get white {
    return (this.._color = Colors.white) as T;
  }

  T get black {
    return (this.._color = Colors.black) as T;
  }

  T get grey {
    return (this.._color = Colors.grey) as T;
  }
}
