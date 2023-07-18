import 'package:flutter/material.dart';
import 'package:harmony_chat/screens/chatScreen.dart';
import 'package:harmony_chat/screens/registrationScreen.dart';
import 'package:harmony_chat/screens/loginScreen.dart';
import 'package:harmony_chat/screens/welcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(HarmonyChat());
}

class HarmonyChat extends StatelessWidget {
  const HarmonyChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: 'welcome',
      routes: {
        'welcome': (context) => WelcomeScreen(),
        'login': (context) => LoginScreen(),
        'register': (context) => RegistrationScreen(),
        'chat': (context) => ChatScreen(),
      },
    );
  }
}
