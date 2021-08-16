import 'dart:convert';

class Test {
  int id;
  int coefficient;
  Map<String, dynamic> composition;
  Test({
    this.id,
    this.coefficient,
    this.composition,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'coefficient': coefficient,
      'composition': composition,
    };
  }

  factory Test.fromMap(Map<String, dynamic> map) {
    return Test(
      id: map['id'],
      coefficient: map['coefficient'],
      composition: Map<String, dynamic>.from(map['composition']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Test.fromJson(String source) => Test.fromMap(json.decode(source));
}
