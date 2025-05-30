import 'questions.dart';
class AppBrain {
  int _questionNumber = 0;
  List<Question> _questionGroup = [
    Question(
      q: 'عدد الكواكب في المجموعة الشمسية هو ثمانية كواكب',
      i: 'assets/image-1.jpg',
      a: true,
    ),
    Question(
      q: 'القطط هي حيوانات لاحمة',
      i: 'assets/image-2.jpg',
      a: true,
    ),
    Question(
      q: 'الصين موجودة في القارة الإفريقية',
      i: 'assets/image-3.jpg',
      a: false,
    ),
    Question(
      q: 'الأرض مسطحة وليست كروية',
      i: 'assets/image-4.jpg',
      a: false,
    ),
  ];

  void nextQuestion(){
    if(_questionNumber < _questionGroup.length -1){
      _questionNumber++;
    }
  }
  String getQuestionText(){
    return _questionGroup[_questionNumber].questionText;

  }
  String getQuestionImage(){
    return _questionGroup[_questionNumber].questionImage;
  }
  bool getQuestionAnswer(){
    return _questionGroup[_questionNumber].questionAnswer;
  }
  bool isFinished() {
    if(_questionNumber >= _questionGroup.length -1){
      return true;
    }else{
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}
