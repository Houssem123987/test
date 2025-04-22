class Question {
  late String questionText;
  late String questionImage;
  late bool questionAnswer;

  Question({required String q, required String i, required bool a}){
    this.questionText=q;
    this.questionImage=i;
    this.questionAnswer=a;
  }
}