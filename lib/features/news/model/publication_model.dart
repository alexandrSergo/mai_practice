class Publication {
  final String id;
  final String imagePath;
  final String contentComment;
  final String title;
  final String text;
  final DateTime date;

  Publication({
    required this.id, 
    required this.imagePath, 
    required this.contentComment, 
    required this.title, 
    required this.date,
    required this.text, 
  });

  String get getDate {
    var year = date.year.toString();
    var month = date.month.toString();
    var day = date.day.toString();

    if (date.month < 10) {
      month = '0${date.month}';
    }
    if (date.day < 10) {
      month = '0${date.day}';
    }
    return '$day.$month.$year';
  }
}