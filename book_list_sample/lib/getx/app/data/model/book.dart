class Book {
  final String title;
  final String subtitle;
  final String description;
  final String image;

  Book({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });

  Book.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        subtitle = json['subtitle'],
        description = json['description'],
        image = json['image'];

  Map<String, dynamic> toJson() => {
        'title': title,
        'subtitle': subtitle,
        'description': description,
        'image': image,
      };

  @override
  String toString() => 'Book $image';
}
