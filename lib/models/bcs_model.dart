class BcsModel {
  String title;
  String questionNumber;
  String duration;
  String price;
  int categoryId;

  BcsModel(
      {required this.title,
      required this.questionNumber,
      required this.duration,
      required this.price,
      required this.categoryId});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'questionNumber': questionNumber,
      'duration': duration,
      'price': price,
      'categoryId': categoryId
    };
  }

  @override
  String toString() {
    return 'BcsModel{title: $title, questionNumber: $questionNumber, duration: $duration, price: $price, categoryId: $categoryId}';
  }
}
