class Member {
  String email;
  String description;

  Member(this.email, this.description);

  factory Member.fromJson(Map<String, dynamic> json) {
    return Member(json["email"] ?? "", json["description"] ?? "");
  }

  @override
  String toString() {
    return 'Member{email: $email, description: $description}';
  }
}
