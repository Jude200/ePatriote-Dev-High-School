import 'package:flutter_flu/models/user.dart';
import 'package:flutter_flu/services/sqflitehelper.dart';

List<User> usersTest = [
  User(
      id: 0,
      name: "John Doe",
      email: "johndoe@gmail.com",
      phone: "95654525",
      password: "john12345",
      date: "2021-10-28 09:59:35.5545",
      statut: "parent d'élève"),
  User(
      id: 1,
      name: "Samy Sarl",
      email: "samysarl@gmail.com",
      phone: "64857812",
      password: "samy4321",
      date: "2021-10-11 08:12:35.5545",
      statut: "user"),
  User(
      id: 2,
      name: "Quenum Gaff",
      email: "gaff@gmail.com",
      phone: "63121425",
      password: "123AZZE11",
      date: "2021-11-21 10:45:25.5545",
      statut: "professeur"),
  User(
      id: 3,
      name: "Dan Fash",
      email: "fash@gmail.com",
      phone: "95331122",
      password: "112233445566",
      date: "2021-10-17 19:51:30.5545",
      statut: "élève"),
  User(
      id: 4,
      name: "Feri Bill",
      email: "bill@gmail.com",
      phone: "97563322",
      password: "feriSam@@",
      date: "2021-10-18 20:19:35.5745",
      statut: "censeur"),
  User(
      id: 5,
      name: "Simone Sim",
      email: "simon@gmail.com",
      phone: "53121455",
      password: "48aa7711",
      date: "2021-10-20 20:19:35.5745",
      statut: "élève"),
  User(
      id: 6,
      name: "Cerf Sill",
      email: "sill@gmail.com",
      phone: "51203422",
      password: "10aze77))",
      date: "2021-10-22 12:00:35.5745",
      statut: "user"),
  User(
      id: 7,
      name: "Dam Grao",
      email: "grao@gmail.com",
      phone: "64552212",
      password: "dd_jj_12",
      date: "2021-11-20 23:14:35.5745",
      statut: "parent d'élève")
];

Future insertDb() async {
  SqfLiteHelper sqfLite = SqfLiteHelper();
  for (User user in usersTest) {
    if (await sqfLite.getUser(user.email) == null) {
      await sqfLite.insert(user);
      print("${user.name} inséré ");
    } else {
      print("${user.name} déja inséré ");
    }
  }
}
