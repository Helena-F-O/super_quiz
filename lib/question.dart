// ignore: empty_constructor_bodies
class Question {
  String text; // texto da pergunta
  bool answer;  // valor da resposta bool é sim ou não
  // ? quer dizer que pode ter nulos
  // final quer dizer que nunca vai poder ser modificado

  Question(this.text, this.answer);
}