import 'package:app_odontologia/utils/colors.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            pColor.withOpacity(1),
            pColor,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Image(
                  image: NetworkImage(
                    'https://www.ortodonciarivero.com/wp-content/uploads/imgblog/SONRISAPOST.jpg',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: const Image(
                    image: NetworkImage(
                        'https://scontent.faep24-1.fna.fbcdn.net/v/t39.30808-6/327289261_503412691874067_1280783867511436230_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=HQD29EPf35wAX_jYzO3&_nc_ht=scontent.faep24-1.fna&oh=00_AfDqHftbO1hF9d14JcxFxuJ1ZkIJVQgduFyzGnM2T8u4mQ&oe=63EFEA10')),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: wColor,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                    child: Text('Vamós..'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
