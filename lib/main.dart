import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lexilearn/firebase_options.dart';
import 'package:lexilearn/questions/questions.dart';
import 'package:lexilearn/src/Login_register/forget_password_phone.dart';
import 'package:lexilearn/src/Login_register/login.dart';
import 'package:lexilearn/src/Login_register/welcome.dart';
import 'package:lexilearn/src/activity/level1/five.dart';
import 'package:lexilearn/src/activity/level1/four.dart';
import 'package:lexilearn/src/activity/level1/one_activity.dart';
import 'package:lexilearn/src/activity/level1/secand_activity.dart';
import 'package:lexilearn/src/activity/level1/seven.dart';
import 'package:lexilearn/src/activity/level1/six.dart';
import 'package:lexilearn/src/activity/level1/thired_activity.dart';
import 'package:lexilearn/src/activity/session1/sceensix2.dart';
import 'package:lexilearn/src/activity/session1/screensix3.dart';
import 'package:lexilearn/src/admin/adminprofile.dart';
import 'package:lexilearn/src/blog/blog.dart';
import 'package:lexilearn/src/extra/extra.dart';
import 'package:lexilearn/src/forget_password/forgetpassword.dart';
import 'package:lexilearn/src/home/home.dart';
import 'package:lexilearn/src/home/home3.dart';
import 'package:lexilearn/src/home/language.dart';
import 'package:lexilearn/src/home/levels/level3.dart';
import 'package:lexilearn/src/profile/profile.dart';
import 'package:lexilearn/src/responsive/mobile_screen.dart';
import 'package:lexilearn/src/responsive/responsive_l_screen.dart';
import 'package:lexilearn/src/responsive/web_screen.dart';
import 'package:lexilearn/src/spainish/level1/spain_four.dart';
import 'package:lexilearn/src/spainish/level1/spain_one.dart';
import 'package:lexilearn/src/splash_screen/splash.dart';
import 'package:lexilearn/src/streak/streak.dart';

import 'languages/french/level1/screen3.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.lazyPut(()=> AuthMethods()));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

  var auth = FirebaseAuth.instance;
  var isLogin =false;

  checkIfLogin()async{
    auth.authStateChanges().listen((User? user) {
      if(user != null && mounted){
        setState(() {
          isLogin=true;
        });
      }
    });
  }
  @override
  void initState() {
    checkIfLogin();
    super.initState();
  }
  //get snapshot => null;
  @override
  Widget build(BuildContext context) {
  //  auth.signOut();
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        // streak(),
        //DashboardPage(),
        // SecondPage(),
     // four_activity(),
      //  Second_activity(),
      // SecondPage(),
      //   Six2Page(),
      // five_activity(),
      //   SixPage(),
      //SevenPage(),
      //   Six3Page(),
       // Home3()
      //    T_active(),
       // adminscreen(),
      //Sp_four(),
        //ForgetPasswordScreen(),
      //extra(),
     //  welcome(),
     //   streak()
      isLogin ? const Home() : const splash(),
      //  Frpg3()

      //splash(),
      // StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (context,snapshot){
      //     if(snapshot.connectionState == ConnectionState.active){
      //       if(snapshot.hasData){
      //         return const ResponsiveLayout(webScreenLayout: WebScreenLayout(),mobileScreenLayout: MobileScreenLayout(),);
      //       }else if(snapshot.hasError){
      //         return Center(
      //           child: Text('${snapshot.error}'),
      //         );
      //       }
      //     }
      //     if(snapshot.connectionState ==ConnectionState.waiting){
      //       return const Center(
      //         child: CircularProgressIndicator(
      //           color: Colors.white,
      //         ),
      //       );
      //     }
      //     return const login();
      // })
    );
  }
}
