int calculate() {
  return 6 * 7;
}

// Never sendError() {
//   throw ArgumentError('error');
// }

// class abc {
//   late double a;
//   abc() {
//     a = 5;
//   }
// }

// class GFG {
//   var a;
//   var b;

//   void set(x, y) {
//     this.a = x;
//     this.b = y;
//   }

//   int add() {
//     var z = this.a + this.b;
//     // print(z);
//     return z;
//   }
// }

// void nullAwareSpreadOP() {
//   var a = [1, 2, 3];
//   var b = null;
//   var c = [...a, ...?b];
//   print(c);
// }

void mapOp() {
  var a = {'id': 1, 'name': 'abhishek'};
  var b = {
    ...a,
    ...{1: 2}
  };
  print(b);
}

Function(String) makeCar(String make) {
  a(model) => '$make $model';
  return a;
}

void cascadeOp() {
  List<int> list1 = [1, 0, 2];
  list1.sort();
  list1 = list1.reversed.toList();
  list1.addAll([5, 3, 4]);
  list1.sort();
  list1 = list1.map((e) => e + 1).toList();
  print(list1);

  // use of cascade operator (when you want to chain methods)

  List<int> list2 = (([1, 0, 2]..sort()).reversed.toList()
        ..addAll([5, 3, 4])
        ..sort())
      .map((e) => e + 1)
      .toList();
  print(list2);
}



// void hihi() {
//   A(p: 1, q: 1, r: 2);
//   A.generateRandomNumbers();
//   A.fromJson(json: {'p': 1, 'q': 2});
// }
