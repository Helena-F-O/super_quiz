import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(const SuperQuiz());
}
class SuperQuiz extends StatefulWidget {
  const SuperQuiz({Key? key}) : super(key: key);
  @override
  State<SuperQuiz> createState() => _SuperQuizState();
}
class _SuperQuizState extends State<SuperQuiz> {

  List<Icon> score = [const Icon(Icons.check, color: Colors.green,), const Icon(Icons.close, color: Colors.red,),];
  List<Question> questionBank = [ // colocar um _ antes da lista ela fica privada
    Question('Alguns gatos são alérgicos a humanos', true),
    Question('É possível fazer com que uma vaca suba escadas, mas não descê-las.', false),
    Question('Aproximadamente um quarto dos ossos humanos estão nos pés.', true),
    Question('O sangue de uma lesma é verde.', true),
    Question('O nome de solteira da mãe de Buzz Aldrin era \"Moon\".', true),
    Question('É ilegal urinar no oceano, em Portugal.', true),
    Question('Nenhum pedaço quadrado de papel pode ser dobrado mais do que 7 vezes.', false),
    Question('Em Londres, se você morrer no Parlamento, você tem direito a um funeral de estado, porque o prédio é considerado um local sagrado.', true),
    Question('O som mais forte produzido por qualquer animal é de 188dB. Esse animal é o elefante africano.', false),
    Question('A área total dos dois pulmões de um humano é de aproximadamente 70 metros quadrados.', true),
    Question('Google foi chamado, originalmente de \"Backrub\".', true),
    Question('O chocolate afeta o coração e o sistema nervoso de um cão; algumas gramas são suficientes para matar um cão pequeno.', true),
    Question('Na Virginia do Oeste, EUA, se você atropelar um animal com um carro, por acidente, você pode levá-lo para casa e comê-lo.', true),
  ];

  int currentQuestion = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        questionBank[currentQuestion].text,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        setState(() {
                          if(questionBank[currentQuestion].answer == true){
                            score.add(const Icon(Icons.check, color: Colors.green));
                          }else{
                            score.add(const Icon(Icons.close, color: Colors.red));
                          }
                          currentQuestion++;
                        });
                      },
                      child: const Text(
                        'Sim',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          if(questionBank[currentQuestion].answer == false){
                            score.add(const Icon(Icons.check, color: Colors.green));
                          }else{
                            score.add(const Icon(Icons.close, color: Colors.red));
                          }
                          currentQuestion++;
                        });
                      },
                      child: const Text(
                        'Não',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: score,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}