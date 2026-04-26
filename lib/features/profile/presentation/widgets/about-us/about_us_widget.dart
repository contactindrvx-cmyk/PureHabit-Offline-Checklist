import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/buttons/button_widget.dart';
import '../../../../../core/widgets/buttons/icon_text_button_widget.dart';

class AboutUsWidget extends StatelessWidget {
  final Function() onBackPressed;

  const AboutUsWidget({super.key, required this.onBackPressed});

  // لنک اوپن کرنے کا فنکشن
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Divider(
              color: AppColors.white.withOpacity(0.7),
            ),
          ),
          const SizedBox(height: 30),
          // پہلی لائن: انسٹاگرام اور ٹک ٹاک
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconTextButton(
                height: 40,
                width: 150,
                icon: LineAwesomeIcons.instagram,
                text: 'Instagram',
                onPressed: () {
                  _launchURL('https://instagram.com/aigrowthbox');
                },
                textStyle: AppTextStyles.profileIconTextButton,
                backgroundColor: AppColors.secondary,
                iconColor: Colors.pinkAccent, // انسٹاگرام کا کلر
              ),
              IconTextButton(
                height: 40,
                width: 150,
                icon: LineAwesomeIcons.tiktok,
                text: 'TikTok',
                onPressed: () {
                  _launchURL('https://www.tiktok.com/@aigrowthbox');
                },
                textStyle: AppTextStyles.profileIconTextButton,
                backgroundColor: AppColors.secondary,
                iconColor: Colors.white, // ٹک ٹاک کا کلر
              ),
            ],
          ),
          const SizedBox(height: 20),
          // دوسری لائن: واٹس ایپ چینل اور فیس بک
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconTextButton(
                  height: 40,
                  width: 150,
                  icon: LineAwesomeIcons.what_s_app,
                  text: 'WhatsApp',
                  onPressed: () {
                    _launchURL('https://whatsapp.com/channel/0029VbDBHXwBFLgZqG7PFf1C');
                  },
                  textStyle: AppTextStyles.profileIconTextButton,
                  backgroundColor: AppColors.secondary,
                  iconColor: AppColors.whatsapp,
                ),
                IconTextButton(
                  height: 40,
                  width: 150,
                  icon: LineAwesomeIcons.facebook_f,
                  text: 'Facebook',
                  onPressed: () {
                    _launchURL('https://facebook.com/aigrowthbox');
                  },
                  textStyle: AppTextStyles.profileIconTextButton,
                  backgroundColor: AppColors.secondary,
                  iconColor: AppColors.facebook,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // تیسری لائن: آپ کا ای میل
          IconTextButton(
            height: 40,
            width: 150,
            icon: Icons.email_outlined,
            text: 'Email Us',
            onPressed: () {
              _launchURL('mailto:contact@aigrowthbox.com');
            },
            textStyle: AppTextStyles.profileIconTextButton,
            backgroundColor: AppColors.secondary,
            iconColor: AppColors.outlook,
          ),
          const SizedBox(height: 50),
          // بیک کا بٹن
          ButtonWidget(
            onPress: onBackPressed,
            backgroundColor: Colors.transparent,
            width: 120,
            height: 40,
            borderRadius: 0,
            borderColor: AppColors.border,
            borderWidth: 0.7,
            child: Text(
              'Back',
              textAlign: TextAlign.center,
              style: AppTextStyles.profileBackButtonText,
            ),
          ),
        ],
      ),
    );
  }
}
