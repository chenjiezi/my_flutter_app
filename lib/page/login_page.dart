import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('登录')),
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
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
            ),
            // Swiper(
            //   itemBuilder: (BuildContext context, int index) {
            //     return Image.network(
            //       "https://via.placeholder.com/350x150",
            //       fit: BoxFit.fill,
            //     );
            //   },
            //   itemCount: 3,
            //   pagination: const SwiperPagination(),
            //   control: const SwiperControl(),
            // ),
          ],
        ),
      ),
    );
  }
}
