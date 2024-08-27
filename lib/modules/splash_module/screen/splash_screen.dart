import 'package:flutter/material.dart';
import 'package:mishop_app/modules/language_module/screen/language_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
  
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLang();
  }
    _navigateToLang() async {
    await Future.delayed(const Duration(seconds: 4), () {}); // Wait for 3 seconds
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LanguageScreen()),
    );
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color(0xFF39C7A5),
          child: Padding(
            padding: const EdgeInsets.only(
              top:350,
            ),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                     image: const DecorationImage(
                      image: AssetImage('assets/images/Logo Icon.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text('mi', style: TextStyle(fontSize: 24, color: Color(0xFFFFCC00), fontWeight: FontWeight.bold),),
                   Text('shop',  style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)),
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}