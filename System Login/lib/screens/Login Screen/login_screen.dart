import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/providers.dart';
import 'widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late Offset offset;

  late Duration duration;
  late double opacity;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    offset = Offset.zero;
    opacity = 0;
    duration = const Duration(milliseconds: 500);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    unFocus() {
      FocusScope.of(context).requestFocus(FocusNode());
    }

    clearText() {
      emailController.clear();
      passwordController.clear();
    }

    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Consumer<LoginProvider>(builder: (context, provider, child) {
          if (provider.currentState == state.success) {
            if (emailController.text.isNotEmpty) {
              Provider.of<CurrentUserProvider>(context, listen: false)
                  .loggedIn(emailController.text);

              Provider.of<BankStatementProvider>(context, listen: false)
                  .readLocalStatement(emailController.text);
            }
            clearText();
            Provider.of<UserHistoryProvider>(context, listen: false)
                .getHistory();

            /* clearText();*/
          } else if (provider.currentState == state.failed) {
            opacity = 1;
            offset = const Offset(0, -1.3);
          } else {
            opacity = 0;
            offset = Offset.zero;
          }

          return GestureDetector(
            onTap: unFocus,
            child: Container(
              //container was used to allow GestureDetector to work
              color: Colors.transparent,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const YellowClippedContainer(),
                  const WhiteClippedContainer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      children: [
                        const Spacer(
                          flex: 2,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            AnimatedOpacity(
                              opacity: opacity,
                              duration: duration,
                              child: AnimatedSlide(
                                offset: offset,
                                duration: duration,
                                curve: Curves.easeInOut,
                                child: const ErrorMessage(),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              child: TextFormField(
                                controller: emailController,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.text,
                                decoration: const InputDecoration(
                                  hintText: 'Username or Email',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: TextFormField(
                            controller: passwordController,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              hintText: 'Password',
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: size.height * 0.07),
                          child: ElevatedButton(
                            onPressed: () async {
                              unFocus();
                              provider.submitForm(emailController.text.trim(),
                                  passwordController.text.trim(), context);
                            },
                            child: provider.currentState == state.loading
                                ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Register/Log in",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
