class Question {
  String? question;
  bool? option_1;
  bool? option_2;
  bool? option_3;
  bool? option_4;
  String? sub;
  String? level;

  Question(
      {this.question,
        this.option_1,
        this.option_2,
        this.option_3,
        this.option_4,
        this.sub,
        this.level});

  Question.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    option_1 = json['option_1'];
    option_2 = json['option_2'];
    option_3 = json['option_3'];
    option_4 = json['option_4'];
    sub = json['topic'];
    level = json['difficulty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['option_1'] = this.option_1;
    data['option_2'] = this.option_2;
    data['option_3'] = this.option_3;
    data['option_4'] = this.option_4;
    data['topic'] = this.sub;
    data['difficulty'] = this.level;
    return data;
  }
}
