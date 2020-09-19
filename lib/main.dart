import 'package:Vacuate/Screens/AddRoutesScreen.dart';
import 'package:Vacuate/Screens/LoginScreen.dart';
import 'package:Vacuate/Screens/OfficeInformationScreen.dart';
import 'package:Vacuate/Screens/SignupScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'Screens/HomeScreen.dart';
import 'package:provider/provider.dart';
import 'Services/UserAuthProvider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

var liveDb;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  liveDb = await Firebase.initializeApp(
      name: 'db2',
      options: FirebaseOptions(
              appId: '1:455185418375:web:b244dc03c4ab7440ed1022',
              apiKey: 'AIzaSyCOJbAKgkCEvTjHqUnEH4Oyt1NGqkiMLNQ',
              messagingSenderId: '455185418375',
              projectId: 'hackmit-df9ea',
              databaseURL: 'https://hackmit-df9ea.firebaseio.com',
            ),
    );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserAuthProvider.instance(),
        )
      ],
      child: MaterialApp(
        
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            textTheme: GoogleFonts.kanitTextTheme(),
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (ctx, userSnapshot) {
              if(userSnapshot.hasData) {
                return HomeScreen();
              }
              return SignupScreen();
            },
          ),
          initialRoute: '/',
          routes: {
            // '/': (context) => HomeScreen(),
            '/office_info': (context) => OfficeInformationScreen(liveDb: liveDb),
            "/add_routes": (context) => AddRoutesScreen(),
            //Temporary
            '/signup_screen': (context) => SignupScreen(),
            '/login_screen' : (context) => LoginScreen(),
            '/home_screen': (context) => HomeScreen(),
          }),
    );
  }
}
