import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_app/services/auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const FlutterLogo(size: 150),
            Flexible(
                child: LoginButton(
              loginMethod: AuthServices().anonLogin,
            ))
          ],
        ),
      ),
    );
  }
}

// Widget for the login button

// class LoginButton extends StatelessWidget {
//   final Color color;
//   final IconData icon;
//   final String text;
//   final Function loginMethod;

//   const LoginButton(
//       {super.key,
//       required this.text,
//       required this.icon,
//       required this.color,
//       required this.loginMethod});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 10),
//       child: ElevatedButton.icon(
//         icon: Icon(
//           icon,
//           color: Colors.white,
//           size: 20,
//         ),
//         style: TextButton.styleFrom(
//           padding: const EdgeInsets.all(24),
//           backgroundColor: color,
//         ),
//         onPressed: () => loginMethod(),
//         label: Text(text, textAlign: TextAlign.center),
//       ),
//     );
//   }
// }

// ChatGPT generated code
class LoginButton extends StatelessWidget {
  final Function loginMethod;

  LoginButton({required this.loginMethod});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () => loginMethod(),
        icon: Icon(Icons.login),
        label: Text('Log In'),
      ),
    );
  }
}
