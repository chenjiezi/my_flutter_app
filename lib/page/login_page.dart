import 'package:flutter/material.dart';

import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:my_app/border_with_moving_line.dart';

const List<String> images = [
  "images/bg0.jpeg",
  "images/bg1.jpeg",
  "images/bg2.jpeg",
];

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('润智新能源'),
      //   centerTitle: true,
      //   backgroundColor: const Color(0xFF001545),
      // ),
      body: Container(
        constraints: const BoxConstraints(
          minHeight: double.infinity,
          minWidth: double.infinity,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 59),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/login_logo.png'),
                    width: 65,
                    height: 105,
                  )
                ],
              ),
            ),

            const BorderWithMovingLine(),

            // Container(
            //   width: double.infinity,
            //   height: 50,
            //   margin: const EdgeInsets.fromLTRB(0, 55, 0, 33),
            //   color: Colors.redAccent,
            //   child: Stack(
            //     children: [
            //       Positioned(
            //         bottom: 0,
            //         left: 0,
            //         child: Container(
            //           width: 50,
            //           height: 2,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // Container(
            //   margin: const EdgeInsets.fromLTRB(0, 55, 0, 33),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Align(
            //           alignment: Alignment.center,
            //           child: TextButton(
            //             child: const Text('账号密码'),
            //             onPressed: () {},
            //           ),
            //         ),
            //       ),
            //       Expanded(
            //         child: Align(
            //           alignment: Alignment.center,
            //           child: TextButton(
            //             child: const Text('验证码登录'),
            //             onPressed: () {},
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF69C0FF),
                        width: 1.0,
                      ),
                    ),
                    child: const TextField(
                      autofocus: true,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        labelText: '用户名/手机号',
                        labelStyle: TextStyle(
                          color: Color(0xFF69C0FF),
                        ),
                        prefixIconColor: Color(0xFF69C0FF),
                        prefixIcon: Icon(Icons.person),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: DecoratedBox(
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
                        decoration: InputDecoration(
                          labelText: '密码',
                          labelStyle: const TextStyle(
                            color: Color(0xFF69C0FF),
                          ),
                          prefixIconColor: const Color(0xFF69C0FF),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              // ignore: avoid_print
                              print('123');
                            },
                            icon: const Icon(Icons.remove_red_eye_rounded),
                          ),
                          suffixIconColor: const Color(0xFF69C0FF),
                          border: InputBorder.none,
                        ),
                        obscureText: true,
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF69C0FF),
                        width: 1.0,
                      ),
                    ),
                    child: const TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        labelText: '验证码',
                        labelStyle: TextStyle(
                          color: Color(0xFF69C0FF),
                        ),
                        prefixIconColor: Color(0xFF69C0FF),
                        prefixIcon: Icon(Icons.admin_panel_settings_outlined),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
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
                              onPressed: () => {print('登录')},
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
            ),
          ],
        ),
      ),
    );
  }
}
