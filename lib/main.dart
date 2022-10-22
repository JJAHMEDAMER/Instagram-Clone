import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Responsive/Responsive_layout.dart';
import 'package:instagram_clone/Responsive/mobile_view.dart';
import 'package:instagram_clone/Responsive/web_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyD5ojhnjzF7NGgeIExTp9P1pyByvslNjqA',
        appId: "1:480560150043:web:4f4750b81242042c0beabe",
        messagingSenderId: "480560150043",
        projectId: "instagram-clone-jjahmedamer",
        storageBucket: "instagram-clone-jjahmedamer.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram Clone",
      home: ResponsiveLayout(
        mobileView: MobileView(),
        webView: WebView(),
      ),
    );
  }
}
