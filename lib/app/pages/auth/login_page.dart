import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.colors.primary,
        body: Form(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background_login.png'),
                  fit: BoxFit.cover),
            ),
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    SizedBox(
                      height: MediaQuery.of(context).size.width *
                          (MediaQuery.of(context).size.width > 350 ? .60 : .25),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Center(
                        child: Text(
                          'Login',
                          style: context.textStyles.titleWhite,
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          label: Text('Email')),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          label: Text('Senha')),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Text(
                        'Esqueceu a senha?',
                        style: context.textStyles.textSecondaryFontMedium
                            .copyWith(
                                color: context.colors.yelow, fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Button(
                      width: MediaQuery.of(context).size.width * .9,
                      onPressed: () {},
                      style: context.buttonStyles.yellowButton,
                      labelStyle: context
                          .textStyles.textSecondaryFontExtraBoldPrimaryColor,
                      label: 'Entrar',
                    ),
                  ]),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      const Spacer(),
                      Text.rich(
                        TextSpan(text: 'Não possui uma conta? ', children: [
                          TextSpan(
                            text: 'Cadastre-se',
                            style: context.textStyles.textSecondaryFontMedium
                                .copyWith(color: context.colors.yelow),
                                recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).pushNamed('/auth/register')
                          )
                        ]),
                        style: context.textStyles.textSecondaryFontMedium
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
