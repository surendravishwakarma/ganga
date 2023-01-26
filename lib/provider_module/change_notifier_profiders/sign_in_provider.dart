import 'package:flutter/material.dart';

class SignInProvider extends ChangeNotifier {
  final emailControllerSignin = TextEditingController();
  final passwordControllerSignin = TextEditingController();
  GlobalKey<FormState> formKeySignIn = GlobalKey<FormState>();
  bool passwordVisible = true;
}
