import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SignUpScreenBody.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterScreenBody(),
    );
  }
}
