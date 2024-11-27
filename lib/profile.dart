import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:url_launcher/url_launcher.dart';

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
            const facebookUrl = 'https://www.facebook.com';
            if (await canLaunchUrl(Uri.parse(facebookUrl))) {
              await launchUrl(Uri.parse(facebookUrl));
            } else {
              throw 'Could not launch $facebookUrl';
            }
          },
          mini: true,
          buttonType: ButtonType.facebook,
        ),
        FlutterSocialButton(
          onTap: () async {
            const linkedinUrl = 'https://www.linkedin.com';
            if (await canLaunchUrl(Uri.parse(linkedinUrl))) {
              await launchUrl(Uri.parse(linkedinUrl));
            } else {
              throw 'Could not launch $linkedinUrl';
            }
          },
          mini: true,
          buttonType: ButtonType.linkedin,
        ),
        FlutterSocialButton(
          onTap: () async {
            const twitterUrl = 'https://www.x.com';
            if (await canLaunchUrl(Uri.parse(twitterUrl))) {
              await launchUrl(Uri.parse(twitterUrl));
            } else {
              throw 'Could not launch $twitterUrl';
            }
          },
          mini: true,
          buttonType: ButtonType.twitter,
        ),
        FlutterSocialButton(
          onTap: () async {
            const instagramUrl = 'https://www.instagram.com';
            if (await canLaunchUrl(Uri.parse(instagramUrl))) {
              await launchUrl(Uri.parse(instagramUrl));
            } else {
              throw 'Could not launch $instagramUrl';
            }
          },
          mini: true,
          buttonType: ButtonType.instagram,
        ),
        FlutterSocialButton(
          onTap: () async {
            const phoneNumber = 'tel:+2331234567';
            if (await canLaunchUrl(Uri.parse(phoneNumber))) {
              await launchUrl(Uri.parse(phoneNumber));
            } else {
              throw 'Could not launch $phoneNumber';
            }
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
