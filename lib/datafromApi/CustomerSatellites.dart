class CustomerSatellite{
  String? id;
  String? country;
  String? launchdate;
  String? mass;
  String? launcher;

  CustomerSatellite(
      {this.id, this.country, this.launchdate, this.mass, this.launcher});

  CustomerSatellite.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    country = json['country'];
    launchdate = json['launch_date'];
    mass = json['mass'];
    launcher = json['launcher'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> value = new Map<String, dynamic>();
    value['id'] = this.id;
    value['country'] = this.country;
    value['launch_date'] = this.launchdate;
    value['mass'] = this.mass;
    value['launcher'] = this.launcher;
    return value;
  }
}