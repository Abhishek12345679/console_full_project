import 'dart:math';

class A {
  // constructor
  const A({required this.p, required this.q, required this.r});

  A operator +(A a) => A(p: p + a.p, q: q + a.q, r: r + a.r);

  // named constructor
  const A.zero()
      : p = 0,
        q = 0,
        r = 0;

  A.fromJson({required Map<String, num> json})
      : p = json['p']!,
        q = json['q']!,
        r = json['r']!;

  factory A.generateRandomNumbers() {
    return A(
        p: Random().nextInt(100),
        q: Random().nextInt(100),
        r: Random().nextInt(10));
  }

  final num p;
  final num q;
  final num r;

  @override
  String toString() => 'A(p:$p,q:$q,r:$r)';
}

class Performer {
  void perform() => print("Performs!");
}

mixin Guitarist on Performer {
  void playGuitar() => print("Performs Guitar!");
  void test() => perform();
}
mixin Drummer {
  void playDrums() => print("Performs Drums!");
  void perform() => playDrums();
}

class Musician extends Performer with Guitarist, Drummer {}

void main(List<String> arguments) {
  Musician musician = Musician();
  musician.test();
}
