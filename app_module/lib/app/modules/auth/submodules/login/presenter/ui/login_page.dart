import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.1),
              Text('Hello Again!', style: theme.textTheme.headline1),
              Text("Welcome back you've been missed!", style: theme.textTheme.headline2),
              SizedBox(height: size.height * 0.08),
              Form(
                child: Column(
                  children: [
                    const PlantTextFieldWidget(hintText: 'E-mail'),
                    SizedBox(height: size.height * 0.02),
                    const PlantTextFieldWidget(hintText: 'Password'),
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
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
