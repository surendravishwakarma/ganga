// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Ganga`
  String get appName {
    return Intl.message(
      'Ganga',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `SignIn`
  String get signIn {
    return Intl.message(
      'SignIn',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `My BID's`
  String get myBid {
    return Intl.message(
      'My BID\'s',
      name: 'myBid',
      desc: '',
      args: [],
    );
  }

  /// `Set New Password`
  String get setNewPassword {
    return Intl.message(
      'Set New Password',
      name: 'setNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `No Internet`
  String get noInternet {
    return Intl.message(
      'No Internet',
      name: 'noInternet',
      desc: '',
      args: [],
    );
  }

  /// `TimeoutException`
  String get timeoutException {
    return Intl.message(
      'TimeoutException',
      name: 'timeoutException',
      desc: '',
      args: [],
    );
  }

  /// `SocketException`
  String get socketException {
    return Intl.message(
      'SocketException',
      name: 'socketException',
      desc: '',
      args: [],
    );
  }

  /// `Okay`
  String get okay {
    return Intl.message(
      'Okay',
      name: 'okay',
      desc: '',
      args: [],
    );
  }

  /// `Please Wait Accept Your Invite`
  String get pleaseWaitAcceptYourInvite {
    return Intl.message(
      'Please Wait Accept Your Invite',
      name: 'pleaseWaitAcceptYourInvite',
      desc: '',
      args: [],
    );
  }

  /// `Invite Sent`
  String get inviteSent {
    return Intl.message(
      'Invite Sent',
      name: 'inviteSent',
      desc: '',
      args: [],
    );
  }

  /// `Invite SentImg`
  String get inviteSentImg {
    return Intl.message(
      'Invite SentImg',
      name: 'inviteSentImg',
      desc: '',
      args: [],
    );
  }

  /// `Something Went Wrong`
  String get somethingWentWrong {
    return Intl.message(
      'Something Went Wrong',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `failure`
  String get failure {
    return Intl.message(
      'failure',
      name: 'failure',
      desc: '',
      args: [],
    );
  }

  /// `success`
  String get success {
    return Intl.message(
      'success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `enterCorrectPhone`
  String get enterCorrectPhone {
    return Intl.message(
      'enterCorrectPhone',
      name: 'enterCorrectPhone',
      desc: '',
      args: [],
    );
  }

  /// `enterYourEmail`
  String get enterYourEmail {
    return Intl.message(
      'enterYourEmail',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `enterValidEmail`
  String get enterValidEmail {
    return Intl.message(
      'enterValidEmail',
      name: 'enterValidEmail',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
