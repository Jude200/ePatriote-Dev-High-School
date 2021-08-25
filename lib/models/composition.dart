Map toJson() {
  List classList = ["seconde", "premiere", "terminal"];
  List<String> serieList = ["A", "B", "C", "D"];
  List<String> eleveList = ["John Doe", "Steeve Kart", "Osmond Serk"];
  List<String> matterList = ["Francais", "Maths", "PCT", "Anglais", "Info"];
  Map<String, List> note = {"interrogation": [], "devoir": [], "moyenne": []};
  Map map = {};
  Map map1;
  Map map2;
  Map map3;
  for (String matter in matterList) {
    map1[matter] = note;
  }
  for (String eleve in eleveList) {
    map2.update(eleve, (value) => map1);
  }
  for (String serie in serieList) {
    map3.update(serie, (value) => map2);
  }
  for (String claass in classList) {
    map.update(claass, (value) => map3);
  }

  return map;
}

void main(List<String> args) {
  print(toJson());
}
