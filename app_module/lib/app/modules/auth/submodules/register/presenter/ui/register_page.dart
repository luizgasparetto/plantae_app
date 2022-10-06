import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            Text('Create your Account', style: theme.textTheme.headline1),
            Text('Join in the largest botanical community', style: theme.textTheme.headline2),
            SizedBox(height: size.height * 0.08),
            Form(
              child: Column(
                children: [
                  const PlantTextFieldWidget(hintText: 'Your Name'),
                  SizedBox(height: size.height * 0.02),
                  const PlantTextFieldWidget(hintText: 'E-mail'),
                  SizedBox(height: size.height * 0.02),
                  const PlantTextFieldWidget(hintText: 'Password'),
                  SizedBox(height: size.height * 0.06),
                  PlantPrimaryButtonWidget(
                    buttonLabel: 'Sign In',
                    onPressed: () {},
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? ", style: theme.textTheme.headline5),
                      InkWell(
                        onTap: () => Modular.to.navigate(Modular.initialRoute),
                        child: Text(
                          'Sign In',
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
