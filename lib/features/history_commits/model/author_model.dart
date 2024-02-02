class AuthorModel {
  final String name;
  final String email;
  final DateTime date;

  AuthorModel({
    required this.name,
    required this.email,
    required this.date,
  });

  factory AuthorModel.fromJson(Map<String, dynamic> json) => AuthorModel(
    name: json["name"],
    email: json["email"],
    date: DateTime.parse(json["date"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "date": date.toIso8601String(),
  };
}
