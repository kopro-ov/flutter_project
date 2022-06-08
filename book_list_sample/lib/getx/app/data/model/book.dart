class Book {
  late String title;
  late String subtitle;
  late String description;
  late String image;

  static var obs;

  Book({
    title,
    subtitle,
    description,
    image,
  });

  Book.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    description = json['description'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['description'] = description;
    data['image'] = image;
    return data;
  }
}
