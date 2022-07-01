import 'dart:convert';
import 'dart:io';

void main() {
  String rawJson = '''
{"cnpj": "20.661.145/0001-40",
    "age": 67,
    "gender": "female",
    "firstName": "Leslie",
    "lastName": "Kramer"}
''';

  Map<String, dynamic> JsonMap = jsonDecode(rawJson);
  String firstname = JsonMap["firstName"];
  String lastname = JsonMap["lastName"];
  int age = JsonMap["age"];
  String gender = JsonMap["gender"];
  String Cnpj = JsonMap["cnpj"];

  Person OnePeople = Person(firstname, lastname, Cnpj, gender, age);

  OnePeople.getDescription();
}

class Person {
  Person(this.firstname, this.lastname, this.Cnpj, this.gender, this.age);
  String? firstname;
  String? lastname;
  int? age;
  String? gender;
  String? Cnpj;

  void getDescription() {
    print(
        'First name: $firstname \nLast name: $lastname \nAge: $age \nGender: $gender \nCnpj: $Cnpj');
  }
}
