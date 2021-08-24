import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:simple_icons/simple_icons.dart';

class FinalCard extends StatelessWidget {
  FinalCard({
    Key? key,
    required this.name,
    required this.description,
    required this.emailurl,
    this.linkedinurl,
    this.fburl,
    this.githuburl,
    this.whatsapp,
    required this.upworkrurl,
    required this.fiverrurl,
  }) : super(key: key);

  final String name;
  final String description;
  final String emailurl;

  final String? linkedinurl;
  final String? fburl;
  final String? githuburl;
  final String? whatsapp;

  final String? upworkrurl;
  final String? fiverrurl;

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    print(githuburl);
    print('helo');

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 60.0),
              SizedBox(height: 10.0),
              Text(
                name,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Robomono',
                  color: Colors.grey[200],
                  letterSpacing: 2.5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _launchInBrowser(emailurl);
                    },
                    icon: Icon(
                      FontAwesomeIcons.envelope,
                      color: Colors.white70,
                    ),
                  ),
                  if (linkedinurl != null)
                    IconButton(
                      onPressed: () => _launchInBrowser(linkedinurl!),
                      icon: Icon(
                        FontAwesomeIcons.linkedinIn,
                        color: Colors.white70,
                      ),
                    ),
                  if (whatsapp != null)
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white70,
                      ),
                    ),
                  if (fburl != null)
                    IconButton(
                      onPressed: () {
                        _launchInBrowser(fburl!);
                      },
                      icon: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white70,
                      ),
                    ),
                  if (githuburl != null)
                    IconButton(
                      onPressed: () {
                        _launchInBrowser(githuburl!);
                      },
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white70,
                      ),
                    ),
                ],
              ),
              SizedBox(height: 10.0),
              Text(
                'Hire Me On',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                  letterSpacing: 3,
                ),
              ),
              if (upworkrurl != null)
                GestureDetector(
                  onTap: () {
                    _launchInBrowser(upworkrurl!);
                  },
                  child: Card(
                    color: Colors.grey.shade700,
                    margin:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(SimpleIcons.upwork),
                      title: Text(
                        'UpWork',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              if (fiverrurl != null)
                GestureDetector(
                  onTap: () => _launchInBrowser(fiverrurl!),
                  child: Card(
                    color: Colors.grey.shade700,
                    margin:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(SimpleIcons.fiverr),
                      title: Text(
                        'Fiverr',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}





// class FinalCard extends StatefulWidget {
//   @override
//   _FinalCardState createState() => _FinalCardState();
// }
//
// class _FinalCardState extends State<FinalCard> {
//
//   FinalCard({@required this.name, @required this.description});
//
//   final String name;
//   final String description;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SafeArea(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 CircleAvatar(
//                   radius: 60.0,
//                 ),
//                 Text(
//                   name,
//                   style: TextStyle(
//                       fontSize: 40.0,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                   ),
//                 ),
//                 Text(
//                   description,
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     fontFamily: 'Robomono',
//                     color: Colors.grey[200],
//                     letterSpacing: 2.5,
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     IconButton(
//                       onPressed: (){
//
//                       },
//                       icon: Icon(FontAwesomeIcons.envelope, color: Colors.white70,),
//                     ),
//                     IconButton(
//                       onPressed: (){
//
//                       },
//                       icon: Icon(FontAwesomeIcons.linkedinIn, color: Colors.white70,),
//                     ),
//                     IconButton(
//                       onPressed: (){
//
//                       },
//                       icon: Icon(FontAwesomeIcons.whatsapp, color: Colors.white70,),
//                     ),
//                     IconButton(
//                       onPressed: (){
//
//                       },
//                       icon: Icon(FontAwesomeIcons.facebook, color: Colors.white70,),
//                     ),
//                     IconButton(
//                       onPressed: (){
//
//                       },
//                       icon: Icon(FontAwesomeIcons.github, color: Colors.white70,),
//                     ),
//                   ],
//                 )
//
//               ],
//             )
//         ),
//       ),
//     );
//   }
// }
//
