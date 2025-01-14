import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:revanced_manager/constants.dart';
import 'package:revanced_manager/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: ExpandableThemeData(
        hasIcon: true,
        iconColor: Theme.of(context).iconTheme.color,
        iconPadding: const EdgeInsets.symmetric(vertical: 16.0),
        animationDuration: const Duration(milliseconds: 400),
      ),
      header: SizedBox(
        width: double.infinity,
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: I18nText(
            'socialMediaCard.widgetTitle',
            child: Text('', style: kSettingItemTextStyle),
          ),
          subtitle: I18nText(
            'socialMediaCard.widgetSubtitle',
            child: Text(
              '',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: isDark ? Colors.grey[400] : Colors.grey[600],
                  ),
            ),
          ),
        ),
      ),
      expanded: Card(
        color: isDark
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).navigationBarTheme.backgroundColor!,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.github,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
              title: const Text('GitHub'),
              subtitle: const Text('github.com/revanced'),
              onTap: () => launchUrl(
                Uri.parse('https://github.com/revanced'),
                mode: LaunchMode.externalApplication,
              ),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0).copyWith(left: 5),
                child: FaIcon(
                  FontAwesomeIcons.discord,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
              title: const Text('Discord'),
              subtitle: const Text('discord.gg/revanced'),
              onTap: () => launchUrl(
                Uri.parse('https://discord.gg/rF2YcEjcrT'),
                mode: LaunchMode.externalApplication,
              ),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.telegram,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
              title: const Text('Telegram'),
              subtitle: const Text('t.me/app_revanced'),
              onTap: () => launchUrl(
                Uri.parse('https://t.me/app_revanced'),
                mode: LaunchMode.externalApplication,
              ),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.reddit,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
              title: const Text('Reddit'),
              subtitle: const Text('r/revancedapp'),
              onTap: () => launchUrl(
                Uri.parse('https://reddit.com/r/revancedapp'),
                mode: LaunchMode.externalApplication,
              ),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
              title: const Text('Twitter'),
              subtitle: const Text('@revancedapp'),
              onTap: () => launchUrl(
                Uri.parse('https://twitter.com/revancedapp'),
                mode: LaunchMode.externalApplication,
              ),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.youtube,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
              title: const Text('YouTube'),
              subtitle: const Text('youtube.com/revanced'),
              onTap: () => launchUrl(
                Uri.parse('https://youtube.com/revanced'),
                mode: LaunchMode.externalApplication,
              ),
            ),
          ],
        ),
      ),
      collapsed: Container(),
    );
  }
}
