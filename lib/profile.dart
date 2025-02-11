import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:external_app_launcher/external_app_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            // Icon(
            //   Icons.contact_page,
            //   size: 30,
            // ),
            SizedBox(width: 8),
            Text('Profile'),
          ],
        ),
        titleTextStyle: const TextStyle(
          fontSize: 30,
          fontFamily: 'Courier',
        ),
        toolbarHeight: 75,
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        scrollDirection: Axis.vertical,
        children: const [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 200,
                child: ProfileImage(),
              ),
              SizedBox(
                height: 40,
                child: UserName(),
              ),
              SizedBox(
                height: 30,
                child: Dashes(),
              ),
              SizedBox(
                height: 70,
                child: SocialsIcons(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg',
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Center(
          child: Text(
            'John Doe',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontFamily: 'Courier',
            ),
          ),
        ),
      ),
    );
  }
}

class Dashes extends StatelessWidget {
  const Dashes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Dash(
          direction: Axis.horizontal,
          length: 200,
          dashLength: 10,
          dashColor: Colors.blue,
          dashThickness: 1.5,
          dashGap: 5.0,
        ),
      ),
    );
  }
}

class SocialsIcons extends StatelessWidget {
  const SocialsIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlutterSocialButton(
          onTap: () async {
            await LaunchApp.openApp(
              androidPackageName: 'com.facebook.katana',
              iosUrlScheme: 'fb://',
              openStore: true,
            );
          },
          mini: true,
          buttonType: ButtonType.facebook,
        ),
        FlutterSocialButton(
          onTap: () async {
            await LaunchApp.openApp(
              androidPackageName: 'com.android.dialer',
              iosUrlScheme: 'tel://+23312345678',
              openStore: false,
            );
          },
          mini: true,
          buttonType: ButtonType.phone,
        ),
        // const SizedBox(height: 2),
        // const Text('LinkedIn'),
      ],
    );
  }
}
