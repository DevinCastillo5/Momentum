import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:momentum_backup3/flutter_flow/flutter_flow_drop_down.dart';
import 'package:momentum_backup3/flutter_flow/flutter_flow_icon_button.dart';
import 'package:momentum_backup3/flutter_flow/flutter_flow_widgets.dart';
import 'package:momentum_backup3/flutter_flow/flutter_flow_theme.dart';
import 'package:momentum_backup3/index.dart';
import 'package:momentum_backup3/main.dart';
import 'package:momentum_backup3/flutter_flow/flutter_flow_util.dart';

import 'package:momentum_backup3/backend/firebase/firebase_config.dart';
import 'package:momentum_backup3/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
  });

  setUp(() async {
    await authManager.signOut();
  });

  testWidgets('Account Creation Test', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(const MyApp());
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(
        find.byKey(const ValueKey('Signup-Email_de01')), 'momentum@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('Signup-Password_4gmc')), 'momentum');
    await tester.enterText(
        find.byKey(const ValueKey('Signup-ConfirmPassword_wswg')), 'momentum');
    await tester.tap(find.byKey(const ValueKey('Button_q481')));
    await tester.pump(kDoubleTapMinTime);
    await tester.tap(find.byKey(const ValueKey('Button_q481')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    expect(find.byKey(const ValueKey('Text_q8q8')), findsWidgets);
  });

  testWidgets('Test Case US5 Profile Creation', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(const MyApp());
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(
      const Duration(milliseconds: 5000),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 5000),
    );
    await tester.enterText(
        find.byKey(const ValueKey('TextField_6z0p')), 'autoTestUser');
    await tester.tap(find.byKey(const ValueKey('button_qjy1')));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 5000),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 5000),
    );
    expect(find.text('Welcome'), findsWidgets);
  });

  testWidgets('Login Test', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(const MyApp());
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('LoginTab_rr7p')));
    await tester.pump(kDoubleTapMinTime);
    await tester.tap(find.byKey(const ValueKey('LoginTab_rr7p')));
    await tester.pumpAndSettle(const Duration(milliseconds: 10000));
    await tester.enterText(
        find.byKey(const ValueKey('Login-Email_e1q0')), 'momentum2@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('Login-Password_ddjr')), 'momentum2');
    await tester.tap(find.byKey(const ValueKey('Button_gaeo')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    expect(find.text('Welcome'), findsWidgets);
  });

  testWidgets('User Failed Login', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(const MyApp());
    await GoogleFonts.pendingFonts();

    await tester.tap(find.byKey(const ValueKey('authentication_gj15')));
    await tester.pump(kDoubleTapMinTime);
    await tester.tap(find.byKey(const ValueKey('authentication_gj15')));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 10000),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 30000),
    );
    await tester.enterText(
        find.byKey(const ValueKey('Login-Email_e1q0')), 'devin@gmail.com');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.enterText(
        find.byKey(const ValueKey('Login-Password_ddjr')), 'passsssword1');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.tap(find.byKey(const ValueKey('Button_gaeo')));
    expect(find.byKey(const ValueKey('Text_i418')), findsOneWidget);
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
