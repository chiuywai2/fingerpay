import 'package:fingerpay/src/screen/home.dart';
import 'package:fingerpay/src/screen/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:fingerpay/src/service/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MultiProvider(
        providers: [
          Provider<AuthService>(
            create: (_) => AuthService(),
          ),
          StreamProvider(
            create: (context) =>
                context.read<AuthService>().onAAuthStateChanged,
            initialData: null,
          )
        ],
        child: MaterialApp(
          title: 'Finger Pay System',
          theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
                bodyText1:
                    GoogleFonts.montserrat(textStyle: textTheme.bodyText1),
              )),
          debugShowCheckedModeBanner: false,
          home: LandingPage(),
        ));
  }
}

class LandingPage extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
              body: Center(
            child: Text("Error: ${snapshot.error}"),
          ));
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, streamSnapshot) {
              if (streamSnapshot.hasError) {
                return Scaffold(
                  body: Center(
                    child: Text("Error: ${streamSnapshot.error}"),
                  ),
                );
              }
              if (streamSnapshot.connectionState == ConnectionState.active) {
                User user = streamSnapshot.data;

                if (user == null) {
                  return WelcomePage();
                } else {
                  return HomePage();
                }
              }

              return Scaffold(
                  body: Center(
                child: Text("Checking Authentication ...."),
              ));
            },
          );
        }

        return Scaffold(
          body: Center(
            child: Text("Connecting to the app..."),
          ),
        );
      },
    );
  }
}
