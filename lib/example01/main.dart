
main() {
  var list = [1, 2, 3];
  var list2 =[0, ...?list];
  int length = list.length;
  String out = 'length: $length and item $list and list2: $list2';
  print(out);
}

class User {
  int _id;
  String _name;
  int _age;

  User(this._id, this._name,{int age});

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
