import 'package:core_module/core.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

import '../controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = Modular.get<LoginController>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello Again!', style: theme.textTheme.headline1),
            Text("Welcome back you've been missed!", style: theme.textTheme.headline2),
            SizedBox(height: size.height * 0.08),
            Form(
              child: Column(
                children: [
                  PlantTextFieldWidget(
                    controller: loginController.emailController,
                    hintText: 'E-mail',
                  ),
                  SizedBox(height: size.height * 0.02),
                  PlantTextFieldWidget(
                    controller: loginController.passwordController,
                    hintText: 'Password',
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: PlantTextButtonWidget(
                      buttonLabel: 'Recovery Password',
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: size.height * 0.06),
                  PlantPrimaryButtonWidget(
                    buttonLabel: 'Sign In',
                    onPressed: () => loginController.handleLoginWithEmail(),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ", style: theme.textTheme.headline5),
                      InkWell(
                        onTap: () => Modular.to.navigate(AppRoutes.registerPage),
                        child: Text(
                          'Sign Up',
                          style: theme.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
