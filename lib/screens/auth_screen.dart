import 'package:flutter/material.dart';
import 'package:gymapp/_common/colors.dart';
import 'package:gymapp/components/auth_input_deco.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool wantsToLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [MyColors.topGradient, MyColors.bottomGradient],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset("assets/logo.png", height: 128),
                      Text(
                        'GymApp',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 32),
                      TextFormField(
                        decoration: getAuthFieldInputDecoration('E-mail'),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        decoration: getAuthFieldInputDecoration('Senha'),
                        obscureText: true,
                      ),
                      SizedBox(height: 8),
                      Visibility(
                        visible: !wantsToLogin,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: getAuthFieldInputDecoration(
                                'Digite o nome do usuário',
                              ),
                            ),
                            SizedBox(height: 8),
                            TextFormField(
                              decoration: getAuthFieldInputDecoration(
                                'Confirme sua senha',
                              ),
                              obscureText: true,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text((wantsToLogin) ? 'Entrar' : 'Cadastrar'),
                      ),
                      Divider(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            wantsToLogin = !wantsToLogin;
                          });
                        },
                        child: Text(
                          (wantsToLogin) ? 'Cadastre-se' : 'Faça login',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
