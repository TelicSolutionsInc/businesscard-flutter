import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:simple_icons/simple_icons.dart';



class FinalCard extends StatefulWidget {
  FinalCard({Key? key,required this.name, required this.description, required this.emailurl, this.linkedinurl , this.fburl = '', this.githuburl = '', required this.upworkrurl, required this.fiverrurl}) : super(key: key);

  final String name;
  final String description;
  final String emailurl;
  final String? linkedinurl;
  final String fburl;
  final String githuburl;
  final String upworkrurl;
  final String fiverrurl;
  @override
  _FinalCardState createState() => _FinalCardState();
}

class _FinalCardState extends State<FinalCard> {

  _FinalCardState({this.name, this.description, this.emailurl, this.linkedinurl, this.fburl, this.githuburl, this.upworkrurl, this.fiverrurl});
  final String? name;
  final String? description;
  final String? emailurl;
  final String? linkedinurl;
  final String? fburl;
  final String? githuburl;
  final String? upworkrurl;
  final String? fiverrurl;


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
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    name.toString(),
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.description,
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
                          _launched = _launchInBrowser(widget.emailurl);
                        },
                        icon: Icon(FontAwesomeIcons.envelope, color: Colors.white70,),
                      ),
                      // if(widget.linkedinurl!=null)
                      IconButton(
                        onPressed: () => setState(() {
                          _launched = _launchInBrowser(widget.linkedinurl.toString());
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
                          _launched = _launchInBrowser(widget.fburl);
                        },
                        icon: Icon(FontAwesomeIcons.facebook, color: Colors.white70,),
                      ),
                      IconButton(
                        onPressed: (){
                          _launched = _launchInBrowser(widget.githuburl.toString());
                        },
                        icon: Icon(FontAwesomeIcons.github, color: Colors.white70,),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
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
                      _launched = _launchInBrowser(widget.upworkrurl.toString());
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
                      _launched = _launchInBrowser(widget.fiverrurl.toString());
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
              ),
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
