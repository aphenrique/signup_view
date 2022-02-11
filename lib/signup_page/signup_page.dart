import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  bool radioValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/fundo.png',
            fit: BoxFit.fitWidth,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Get Started',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          label: Text('Name'),
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          label: Text('E-mail'),
                          // hintText: 'Name',
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          label: Text('Password'),
                          // hintText: 'Name',
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            visualDensity: VisualDensity.compact,
                            value: radioValue,
                            onChanged: (value) {},
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'I agree to the ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2),
                                  TextSpan(
                                    text: 'Terms of Service',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(color: Colors.indigo),
                                  ),
                                  TextSpan(
                                      text: ' and ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(color: Colors.indigo),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Sign Up',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          InkResponse(
                            onTap: () {},
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Colors.indigo,
                              ),
                              child: const Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
