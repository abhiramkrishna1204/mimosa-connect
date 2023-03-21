import 'package:app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/grid_card.dart';

class Home extends StatelessWidget {
  static const String routeName = '/home';

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          /// [   automaticallyImplyLeading: false, ] to remove the back button in appbar
          automaticallyImplyLeading: false,

          /// [ centerTitle: true, ] to make the app bar title to be centered
          centerTitle: true,
          backgroundColor: MimosaTheme.feedBlue,

          /// [ title ] of the appbar
          title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Mimosa',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: MimosaTheme.white))),
          actions: [
            IconButton(
                onPressed: () {
                  /// [ add the functionality of notification here ]
                },
                icon: const Icon(Icons.notification_add,
                    color: MimosaTheme.white))
          ]),
      body: SafeArea(

          /// [ Grid View ] is to make the cards in a grid manner
          child: GridView(

              /// [ scrollDirection ] is make sure that where you need to scroll, you can change it into [ Axis.horizontal ] if needed
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.all(10.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

                  /// You can change the [ 4 properties value ] along with the numbers and [ assigning the appropriate value. ]
                  crossAxisCount: 1,
                  childAspectRatio: 9 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              children: [
            /// [ Spacer ] to have some space along with area
            const Spacer(),

            /// [ GridCard ] is a customizable card
            GridCard(
              title: 'Alert',
              icon: const Icon(Icons.warning, color: Colors.red),
              onTap: () {
                /// [ funcationality of the card can be specified here ]
                openAlert();
              },
            ),
            const GridCard(
                title: 'Registration for complaints',
                icon: Icon(Icons.edit_document, color: Colors.red)),
            const GridCard(
                title: 'Critical Black Spot Area',
                icon: Icon(Icons.upcoming_rounded, color: Colors.red)),
            const GridCard(
                title: 'Dial 112', icon: Icon(Icons.call, color: Colors.red)),
          ])),
    );
  }

  openAlert() async {
    debugPrint('Opening the alert URL');
    final url = Uri.parse('https://irad.parivahan.gov.in/');

    debugPrint('$url is opened');

    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $url ';
    }
  }
}
