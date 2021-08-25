import 'package:flutter_flu/constants.dart';
import 'package:flutter_flu/models/publications.dart';
import 'package:flutter_flu/services/allFunctions.dart';

List<Publications> publications = [
  Publications(
    date: formatDate(DateTime.now().toString()),
    title: "Magnis dis parturient montes, nascetur",
    container:
        " Bonjour chers élèves et parents d'élèves de $schoolName. \nNous tenons a vous informer que que la rentrée de l'année academique 2021-2020 est prévu pour le Lundi 20 Septembre 2021. \nNous attendons impatiement les élèves afin de les aider a développer et améliorer plus leurs facultés intelletuelles. \nMerci our la confiance que vous placé en nous  ",
    author: "Joe John",
    post: "Le Censeur Adjoint",
  ),
  Publications(
    date: formatDate("2021-10-10 09:59:37.55455"),
    title: "Magnis dis parturient montes, nascetur",
    container:
        "Bonjour chers élèves et parents d'élèves de $schoolName. \nCompte tenue des cas répétitifs de retard dans notre école $schoolName, nous vous informons que le portail des élèves sera fermé rigoureusement à 80 heures 15 minutes et tous retard sera sévèrement puni",
    author: "Casimir Karl",
    post: " Le Censeur Général",
  ),
  Publications(
    date: formatDate("2021-10-28 09:59:35.5545"),
    title: "Magnis dis parturient montes, nascetur",
    container:
        "Bonjour chers élèves et parents d'élèves de $schoolName. \nJe tiens à vous informer que la première composition en Histoire-Geographie est prévu pour le",
    author: "Vladmir Serk",
    post: "Professeur d'Histoire-Géographie de 2nde A1",
  ),
  Publications(
    date: formatDate("2021-11-10 09:59:02.5578"),
    title: "Magnis dis parturient montes, nascetur",
    container:
        "Bonjour chers élèves et parents d'élèves de $schoolName. \n. Fusce sapien arcu, molestie eget varius egestas,faucibus ac urna. Sed at nisi in velit egestas aliquam ut a felis. Aenean malesuada iaculis nisl,ut tempor lacus egestas consequat. Nam nibh lectus, gravida sed egestas ut, feugiat quisdolor. Etiam sollicitudin arcu vel elit bibendum et imperdiet risus tincidunt.Etiam elit velit, posuere ut pulvinar ac, condimentum eget justo. Fusce a erat velit. Vivamusimperdiet ultrices orci in hendrerit. ",
    author: "Joe John",
    post: "Le Censeur Adjoint",
  ),
  Publications(
    date: formatDate("2021-11-12 09:59:14.7856"),
    title: "Magnis dis parturient montes, nascetur",
    container:
        "Quisque Fusce sapien arcu, molestie eget varius egestas,faucibus ac urna. Sed at nisi in velit egestas aliquam ut a felis. Aenean malesuada iaculis nisl,ut tempor lacus egestas consequat. Nam nibh lectus, gravida sed egestas ut, feugiat quisdolor volutpat pharetra tincidunt $schoolName. Fusce sapien arcu, molestie eget varius egestas,faucibus ac urna. Sed at nisi in velit egestas aliquam ut a felis. Aenean malesuada iaculis nisl,ut tempor lacus egestas consequat. Nam nibh lectus, gravida sed egestas ut, feugiat quisdolor.",
    author: "Ramsey Fard",
    post: "Professeur de Mathematique  de Tle C",
  ),
  Publications(
    date: formatDate("2021-08-10 09:59:11.5555"),
    title: "Magnis dis parturient montes, nascetur",
    container:
        "Cum sociis natoque, $schoolName penatibus et magnis dis parturient montes, nascetur ridiculus mus.  In aliquet quam et velit bibendum accumsan. Cum sociis natoque penatibus et magnis disparturient montes, nascetur ridiculus mus. Vestibulum vitae ipsum nec arcu semperadipiscing at ac lacus. Fusce sapien arcu, molestie eget varius egestas,faucibus ac urna. Sed at nisi in velit egestas aliquam ut a felis. Aenean malesuada iaculis nisl,ut tempor lacus egestas consequat. Nam nibh lectus, gravida sed egestas ut, feugiat quisdolor.Fusce sapien arcu, molestie eget varius egestas,faucibus ac urna. Sed at nisi in velit egestas aliquam ut a felis. Aenean malesuada iaculis nisl,ut tempor lacus egestas consequat. Nam nibh lectus, gravida sed egestas ut, feugiat quisdolor. Praesent id pellentesque orci. Morbi congue viverra nisl nec rhoncus.Integer mattis, ipsum a tincidunt commodo, lacus arcu elementum elit, at mollis eros ante acrisus.",
    author: "Julie Born",
    post: "Professeur de PCT 1ere D2",
  ),
];
