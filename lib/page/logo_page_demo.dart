import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

enum LoginType { A, B }

class _LoginPageState extends State<LoginPage> {
  final PageController _pageController = PageController(initialPage: 0);
  TextEditingController emailControllerA = TextEditingController();
  TextEditingController passwordControllerA = TextEditingController();
  TextEditingController emailControllerB = TextEditingController();
  TextEditingController passwordControllerB = TextEditingController();

  double _currentPage = 0;

  void login() {
    if (_currentPage == 0) {
      // TODO: Implement login logic for type A
      print('Implement login logic for type A');
    } else {
      // TODO: Implement login logic for type B
      print('Implement login logic for type B');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  _pageController.animateToPage(
                    0,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text("A方式"),
              ),
              ElevatedButton(
                onPressed: () {
                  _pageController.animateToPage(
                    1,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text("B方式"),
              ),
            ],
          ),
          Expanded(
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                setState(() {
                  _currentPage -=
                      details.delta.dx / MediaQuery.of(context).size.width;
                  _pageController
                      .jumpTo(_currentPage * MediaQuery.of(context).size.width);
                });
              },
              onHorizontalDragEnd: (details) {
                if (_currentPage < 0) {
                  _currentPage = 0;
                } else if (_currentPage > 1) {
                  _currentPage = 1;
                }
                _pageController.animateToPage(
                  _currentPage.round(),
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              },
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index.toDouble();
                  });
                },
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          TextFormField(
                            controller: emailControllerA,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: "Email",
                              hintText: "Enter your email",
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          TextFormField(
                            controller: passwordControllerA,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: "Password",
                              hintText: "Enter your password",
                            ),
                          ),
                          const SizedBox(height: 32.0),
                          const Text(
                            "Swipe left or right to switch between login types",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          TextFormField(
                            controller: emailControllerB,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              labelText: "Phone Number",
                              hintText: "Enter your phone number",
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          TextFormField(
                            controller: passwordControllerB,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: "Password",
                              hintText: "Enter your password",
                            ),
                          ),
                          const SizedBox(height: 32.0),
                          const Text(
                            "Swipe left or right to switch between login types",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: login,
              child: const Text("Login"),
            ),
          ),
        ],
      ),
    );
  }
}
