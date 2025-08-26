class JsonModel {
  String id;
  int number;
  Info? info;

  JsonModel(this.id, this.number, this.info);

  factory JsonModel.fromJson(Map<String, dynamic> json) {
    return JsonModel(
      json['id'] ?? '',
      json['number'] ?? 0,
      json['info'] == null ? null : Info.fromJson(json['info']),
    );
  }

  @override
  String toString() {
    return 'JsonModel{id: $id, number: $number, info: $info}';
  }
}

class Info {
  int age;
  double weight;
  String name;
  Description? description;

  Info(this.age, this.weight, this.name, this.description);

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      json['age'] ?? 0,
      json['weight'] ?? 0.0,
      json['name'] ?? '',
      json['description'] == null
          ? null
          : Description.fromJson(json['description']),
    );
  }

  @override
  String toString() {
    return 'Info{age: $age, weight: $weight, name: $name, description: $description}';
  }
}

class Description {
  String career;
  String when;

  Description(this.career, this.when);

  /// named 생성자
  /// json에는 아래 데이터가 들어옴
  /// {
  ///    "career": "developer",
  ///    "when": "2010-01-01"
  /// }
  factory Description.fromJson(Map<String, dynamic> json) {
    return Description(json['career'] ?? '', json['when'] ?? '');
  }

  @override
  String toString() {
    return 'Description{career: $career, when: $when}';
  }
}

class Framework {
  String email;
  String platform;

  Framework(this.email, this.platform);

  factory Framework.fromJson(Map<String, dynamic> json) {
    return Framework(json['email'] ?? '', json['platform'] ?? '');
  }

  @override
  String toString() {
    return 'Framework{email: $email, platform: $platform}';
  }
}
