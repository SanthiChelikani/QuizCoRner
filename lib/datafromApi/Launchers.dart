class Launcher{
  String? id;


  Launcher({this.id});

  Launcher.fromJson(Map<String, dynamic> json) {
    id = json['id'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> value = new Map<String, dynamic>();
    value['id'] = this.id;

    return value;
  }
}