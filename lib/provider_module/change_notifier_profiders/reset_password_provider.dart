import 'package:flutter/material.dart';

class ResetPasswordProvider extends ChangeNotifier {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKeySignIn = GlobalKey<FormState>();
  bool passwordVisible = true;
}