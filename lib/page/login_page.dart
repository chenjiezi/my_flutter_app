import 'package:flutter/material.dart';

const List<String> images = [
  "images/bg0.jpeg",
  "images/bg1.jpeg",
  "images/bg2.jpeg",
];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _loginType = 'A';

  void login() {
    print('login=>$_loginType');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('润智新能源'),
        //   centerTitle: true,
        //   backgroundColor: const Color(0xFF001545),
        // ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/login_bg.png'),
                    fit: BoxFit.cover)),
            child: Column(children: <Widget>[
              // logo图标
              logo(),
              // 切换登录方式操作栏
              switchLogins(),
              // 登录表单
              loginForm(),
              // 登录按钮
              loginBtns()
            ])));
  }

  Widget logo() {
    return const Padding(
      padding: EdgeInsets.only(top: 59),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/login_logo.png'),
            width: 65,
            height: 105,
          ),
        ],
      ),
    );
  }

  Widget switchLogins() {
    void switchLoginWay(String type) {
      setState(() {
        _loginType = type;
      });
    }

    return Container(
      margin: const EdgeInsets.fromLTRB(0, 55, 0, 33),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  switchLoginWay('A');
                },
                child: const Text('账号密码'),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  switchLoginWay('B');
                },
                child: const Text('验证码登录'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget loginForm() {
    if (_loginType == 'A') {
      return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              rshInput(
                hintText: '用户名/手机号',
                autofocus: true,
                prefixIcon: const Icon(Icons.person),
              ),
              const SizedBox(height: 16),
              rshInput(
                hintText: '登录密码',
                obscureText: true,
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    // ignore: avoid_print
                    print('123');
                  },
                  icon: const Icon(Icons.remove_red_eye_rounded),
                ),
              ),
              const SizedBox(height: 16),
              rshInput(
                hintText: '请输入验证码',
                prefixIcon: const Icon(Icons.admin_panel_settings_outlined),
                suffixIcon: Container(
                  margin: const EdgeInsets.only(right: 12),
                  width: 77.0,
                  // TODO: 当我设置高度小于40，但呈现的效果高度还是40
                  height: 30.0,
                  child: const Image(
                    image: AssetImage('assets/images/login_logo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ));
    } else {
      return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: <Widget>[
            rshInput(
                hintText: '请输入手机号',
                prefixIcon: const Icon(Icons.phone_android_sharp)),
            const SizedBox(height: 16),
            rshInput(
                hintText: '请输入验证码',
                prefixIcon: const Icon(Icons.add_moderator_outlined),
                suffixIcon: Container(
                  constraints:
                      const BoxConstraints(maxHeight: 20, minHeight: 10),
                  padding: const EdgeInsets.all(0),
                  height: 12.0,
                  width: 10,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFF69C0FF))),
                    child: const Text('1'),
                  ),
                ))
          ]));
    }
  }

  Widget loginBtns() {
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            bottom: 67.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 44,
                    child: ElevatedButton(
                      onPressed: login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0050B3),
                      ),
                      child: const Text(
                        '登录',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () => {print('使用微信登录')},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFAFAFA),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.wechat,
                            color: Color(0xff52c41a),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '使用微信登录',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget rshInput(
      {String? labelText,
      String? hintText,
      Widget? prefixIcon,
      Widget? suffixIcon,
      bool autofocus = false,
      bool obscureText = false}) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF69C0FF),
          width: 1.0,
        ),
      ),
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
        ),
        autofocus: autofocus,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF69C0FF),
          ),
          labelStyle: const TextStyle(
            color: Color(0xFF69C0FF),
          ),
          prefixIconColor: const Color(0xFF69C0FF),
          suffixIconColor: const Color(0xFF69C0FF),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: InputBorder.none,
        ),
        obscureText: obscureText,
      ),
    );
  }
}
