import 'package:first_app/challenge/widgets/next_button/next_button_widget.dart';
import 'package:first_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;
  const ResultPage(
      {Key? key,
      required this.title,
      required this.length,
      required this.result})
      : super(key: key);

  //Todo: create a result page depending of result

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(AppImages.trophy),
            Column(
              children: [
                Text("Parabéns!", style: AppTextStyles.heading40),
                SizedBox(
                  height: 16,
                ),
                Text.rich(
                  TextSpan(
                    text: "Você concluiu \n",
                    style: AppTextStyles.body,
                    children: [
                      TextSpan(
                          text: "$title \n", style: AppTextStyles.bodyBold),
                      TextSpan(
                          text: "com $result de $length acertos",
                          style: AppTextStyles.body)
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 68),
                        child: NextButtonWidget.purple(
                            label: "Compartilhar",
                            onTap: () {
                              Share.share(
                                  'Dev quiz NLW5 - Flutter: Resultado do quiz: $title \n Obtive? ${result / length}% de acertividade');
                            }),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 68),
                        child: NextButtonWidget.white(
                            label: "Voltar ao inicio",
                            onTap: () {
                              Navigator.pop(context);
                            }),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
