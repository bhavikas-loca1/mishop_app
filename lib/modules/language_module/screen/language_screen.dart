import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mishop_app/modules/login_module/screens/phone_number_screen.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: double.infinity,
          height: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Ellipse 89.png')),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
                  Text(
                    'mi',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFFFFCC00),
                        fontWeight: FontWeight.bold),
                  ),
                  Text('shop',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF39C7A5),
                          fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 37),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose a Language',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const DropdownMenu(
                  enableFilter: true,
                  width: 300,
                  dropdownMenuEntries: <DropdownMenuEntry>[
                    DropdownMenuEntry(value: '', label: 'english'),
                    DropdownMenuEntry(value: '', label: 'hindi'),
                  ]),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (context)=> const PhoneNumberScreen() ));
              }, child: const Text('next', style: TextStyle(color: Colors.white, fontSize: 20),),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF39C7A5),
                minimumSize: const Size(300, 50),
              )
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    ));
  }
}
