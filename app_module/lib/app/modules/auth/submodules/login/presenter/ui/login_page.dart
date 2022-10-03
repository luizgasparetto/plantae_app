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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.05),
              Text('Login', style: theme.textTheme.headline1),
              Text('Hey, enter your details below to access your account', style: theme.textTheme.headline2),
              SizedBox(height: size.height * 0.05),
              Form(
                child: Column(
                  children: [
                    const PlantTextFieldWidget(hintText: 'E-mail'),
                    SizedBox(height: size.height * 0.02),
                    const PlantTextFieldWidget(hintText: 'Password'),
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
