import 'package:flutter/material.dart';
import 'package:mishop_app/modules/home_module/screen/home_screen.dart';

class OtpScreen extends StatefulWidget {
  final String data;

  const OtpScreen({super.key, required this.data});
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
        child: Column(
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
            const SizedBox(
              height: 60,
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter OTP received',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'in messages',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '6 digit code sent to ',
                          ),
                          const Text(
                            '+91',
                            style: TextStyle(color: Color(0xFF39C7A5)),
                          ),
                          Text('${widget.data}'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                       const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('Resend OTP',  style: TextStyle(color: Color(0xFF39C7A5))),
                         ],
                       ),
                        Padding(
                            padding: const EdgeInsets.all(12),
                      
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                counterText: '',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(131, 133, 133, 133),
                                      width: 2.0),
                                ),
                                
                              ),
                              maxLength: 6,
                            )),
                       const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                          child: const Text(
                            'next',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF39C7A5),
                            minimumSize: const Size(320, 50),
                          )),
                      const SizedBox(
                        height: 27,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
