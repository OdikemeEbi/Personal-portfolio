class Project {
  String name;
  String description;
  String link;
  String? imagePath;

  Project(
      {required this.name,
      required this.description,
      required this.link,
      this.imagePath});
}
