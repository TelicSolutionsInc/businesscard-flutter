import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:simple_icons/simple_icons.dart';



class FinalCard extends StatefulWidget {
  const FinalCard({Key? key}) : super(key: key);

  @override
  _FinalCardState createState() => _FinalCardState();
}

class _FinalCardState extends State<FinalCard> {

  // FinalCard({@required this.name, @required this.description});

  final String name = 'Zeerak';
  final String description = 'Hello I am Zeerak';
  final String emailurl = 'zeerakism@gmail.com';
  final String linkedinurl = 'https://www.linkedin.com';
  final String fburl = 'https://www.facebook.com';
  final String githuburl = 'https://www.github.com';
  final String upworkrurl = 'https://www.upwork.com';
  final String fiverrurl = 'https://wwww.fiverr.com';

  Future<void>? _launched;
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60.0,
                ),
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
                      onPressed: (){
                        _launched = _launchInBrowser(emailurl);
                      },
                      icon: Icon(FontAwesomeIcons.envelope, color: Colors.white70,),
                    ),
                    IconButton(
                      onPressed: () => setState(() {
                        _launched = _launchInBrowser(linkedinurl);
                      }),
                      icon: Icon(FontAwesomeIcons.linkedinIn, color: Colors.white70,),
                    ),
                    IconButton(
                      onPressed: (){

                      },
                      icon: Icon(FontAwesomeIcons.whatsapp, color: Colors.white70,),
                    ),
                    IconButton(
                      onPressed: (){
                        _launched = _launchInBrowser(fburl);
                      },
                      icon: Icon(FontAwesomeIcons.facebook, color: Colors.white70,),
                    ),
                    IconButton(
                      onPressed: (){
                        _launched = _launchInBrowser(githuburl);
                      },
                      icon: Icon(FontAwesomeIcons.github, color: Colors.white70,),
                    ),
                  ],
                ),
                Text(
                  'Hire Me On',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    letterSpacing: 3,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    _launched = _launchInBrowser(upworkrurl);
                  },
                  child: Card(
                    color: Colors.grey.shade700,
                    margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        SimpleIcons.upwork,
                      ),
                      title: Text(
                        'UpWork',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    _launched = _launchInBrowser(githuburl);
                  },
                  child: Card(
                    color: Colors.grey.shade700,
                    margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                          SimpleIcons.fiverr
                      ),
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
            )
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
