import 'dart:math';

class FactorData {
  List<FTeam> list;
  FactorData({required this.list});
}

class FTeam {
  String name1;
  String name2;
  String img1;
  String img2;
  String val1;
  String val2;
  String val3;
  FTeam({
    required this.img1,
    required this.img2,
    required this.name1,
    required this.name2,
    required this.val1,
    required this.val2,
    required this.val3,
  });
}

FactorData factorList = FactorData(list: [
  FTeam(
    img1: 'https://api.sofascore1.com/api/v1/team/259121/image',
    img2: 'https://api.sofascore1.com/api/v1/team/259120/image',
    name1: 'Struga T&L',
    name2: 'Budućnost',
    val1: '1.${Random().nextInt(90)}',
    val2: '2.${Random().nextInt(90)}',
    val3: '1.${Random().nextInt(90)}',
  ),
  FTeam(
    img1: 'https://api.sofascore1.com/api/v1/team/37962/image',
    img2: 'https://api.sofascore1.com/api/v1/team/5222/image',
    name1: 'Sarajevo',
    name2: 'Torpedo Kutaisi',
    val1: '1.${Random().nextInt(90)}',
    val2: '2.${Random().nextInt(90)}',
    val3: '1.${Random().nextInt(90)}',
  ),
  FTeam(
    img1: 'https://api.sofascore1.com/api/v1/team/5417/image',
    img2: 'https://api.sofascore1.com/api/v1/team/5195/image',
    name1: 'Sarajevo',
    name2: 'Torpedo Kutaisi',
    val1: '1.${Random().nextInt(90)}',
    val2: '2.${Random().nextInt(90)}',
    val3: '1.${Random().nextInt(90)}',
  ),
]);
