import 'package:flutter/material.dart';
import 'package:mishop_app/modules/login_module/screens/otp_screen.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
   final TextEditingController _controller = TextEditingController();

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
            
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal:37),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter Your Phone Number',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(12),
                  
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                '+91 ',
                                style: TextStyle(
                                  color: Color(0xFF39C7A5),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            counterText: '',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(131, 133, 133, 133),
                                  width: 2.0),
                            ),
                            hintText: 'Enter your Phone Number',
                          ),
                          maxLength: 10,
                          controller: _controller,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  OtpScreen(data: _controller.text)));
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
                height: 20,
              )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
