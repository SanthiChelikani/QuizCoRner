class Spacecrafts{
  int? id;
  String? name;

  Spacecrafts({this.id, this.name});

  Spacecrafts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> value = new Map<String, dynamic>();
    value['id'] = this.id;
    value['name'] = this.name;
    return value;
  }
}