class Centres{
  int? id;
  String? name;
  String? Place;
  String? State;

  Centres({this.id, this.name, this.Place, this.State});

  Centres.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    Place = json['place'];
    State = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['Place'] = this.Place;
    data['State'] = this.State;
    return data;
  }
}