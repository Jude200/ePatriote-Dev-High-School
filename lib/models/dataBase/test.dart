import 'package:flutter_flu/models/user.dart';
import 'package:flutter_flu/services/allFunctions.dart';
import 'package:flutter_flu/services/sqflitehelper.dart';

List<User> usersTest = [
  User(
      id: 0,
      name: "John Doe",
      email: "johndoe@gmail.com",
      phone: "95654525",
      password: "john12345",
      date: formatDate("2021-10-28 09:59:35.5545"),
      statut: "parent"),
  User(
      id: 1,
      name: "Samy Sarl",
      email: "samysarl@gmail.com",
      phone: "64857812",
      password: "samy4321",
      date: formatDate("2021-10-11 08:12:35.5545"),
      statut: "user"),
  User(
      id: 2,
      name: "Quenum Gaff",
      email: "gaff@gmail.com",
      phone: "63121425",
      password: "123AZZE11",
      date: formatDate("2021-11-21 10:45:25.5545"),
      statut: "professeur"),
  User(
      id: 3,
      name: "Dan Fash",
      email: "fash@gmail.com",
      phone: "95331122",
      password: "112233445566",
      date: formatDate("2021-10-17 19:51:30.5545"),
      statut: "eleve"),
  User(
      id: 4,
      name: "Feri Bill",
      email: "bill@gmail.com",
      phone: "97563322",
      password: "feriSam@@",
      date: formatDate("2021-10-18 20:19:35.5745"),
      statut: "censeur"),
  User(
      id: 5,
      name: "Simone Sim",
      email: "simon@gmail.com",
      phone: "53121455",
      password: "48aa7711",
      date: formatDate("2021-10-20 20:19:35.5745"),
      statut: "eleve"),
  User(
      id: 6,
      name: "Cerf Sill",
      email: "sill@gmail.com",
      phone: "51203422",
      password: "10aze77))",
      date: formatDate("2021-10-22 12:00:35.5745"),
      statut: "user"),
  User(
      id: 7,
      name: "Dam Grao",
      email: "grao@gmail.com",
      phone: "64552212",
      password: "dd_jj_12",
      date: formatDate("2021-11-20 23:14:35.5745"),
      statut: "parent"),
  User(
      id: 8,
      name: "Jimm Erlio",
      email: "jimm@gmail.com",
      phone: "56021412",
      password: "12azer34",
      date: formatDate("2021-10-21 13:51:64.5745"),
      statut: "parent"),
  User(
      id: 9,
      name: "Brandon Kio",
      email: "kio@gmail.com",
      phone: "95147810",
      password: "1a2a3a4a5a",
      date: formatDate("2021-10-20 12:14:12.5745"),
      statut: "parent"),
  User(
      id: 10,
      name: "Brand Poll",
      email: "poll@gmail.com",
      phone: "63123412",
      password: "1.2.3.4.5.6",
      date: formatDate("2021-10-15 17:34:12.5745"),
      statut: "parent"),
  User(
      id: 11,
      name: "Vish Xeul",
      email: "xeul@gmail.com",
      phone: "51023012",
      password: "xeul123...",
      date: formatDate("2021-10-13 22:24:32.5745"),
      statut: "parent"),
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
