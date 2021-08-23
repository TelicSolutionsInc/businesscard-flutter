import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ResultPage.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _descriptioncontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _linkedincontroller = TextEditingController();
  TextEditingController _githubcontroller = TextEditingController();
  TextEditingController _whatsappcontroller = TextEditingController();
  TextEditingController _facebookcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Input Data',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: _namecontroller,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.user),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: _descriptioncontroller,
                      decoration: InputDecoration(
                        labelText: 'Description',
                        labelStyle: kLabelStyle,
                        border: UnderlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.addressBook),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: _emailcontroller,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.envelope),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: _linkedincontroller,
                      decoration: InputDecoration(
                        labelText: 'LinkedIn Link',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.linkedinIn),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: _whatsappcontroller,
                      decoration: InputDecoration(
                        labelText: 'WhatsApp Number',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.whatsapp),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: _facebookcontroller,
                      decoration: InputDecoration(
                        labelText: 'Facebook Link',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.facebook),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: _githubcontroller,
                      decoration: InputDecoration(
                        labelText: 'Github Link',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.github),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FinalCard()));
                    },
                    child: Text(
                      'Create',
                      style: kButtonStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

