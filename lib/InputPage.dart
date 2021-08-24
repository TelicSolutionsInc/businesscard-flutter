import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ResultPage.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


  String? nm;
  String? desc;
  String? eml;
  String? lkndin;
  String? gthb;
  String? whatsapp;
  String? fb;
  String? uwork;
  String? fvr;

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
                      onChanged: (text){
                        nm = text;
                      },
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.user),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      onChanged: (text){
                        desc = text;
                      },
                      decoration: InputDecoration(
                        labelText: 'Description',
                        labelStyle: kLabelStyle,
                        border: UnderlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.addressBook),
                      ),
                      keyboardType: TextInputType.text,
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      onChanged: (text){
                        eml = text;
                      },
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.envelope),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      onChanged: (text){
                        lkndin = text;
                      },
                      decoration: InputDecoration(
                        labelText: 'LinkedIn Link',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.linkedinIn),
                      ),
                      keyboardType: TextInputType.url,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      onChanged: (text){
                        whatsapp = text;
                      },
                      decoration: InputDecoration(
                        labelText: 'WhatsApp Number',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.whatsapp),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      onChanged: (text){
                        fb = text;
                      },
                      decoration: InputDecoration(
                        labelText: 'Facebook Link',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.facebook),
                      ),
                      keyboardType: TextInputType.url,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      onChanged: (text){
                        gthb = text;
                      },
                      decoration: InputDecoration(
                        labelText: 'Github Link',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(FontAwesomeIcons.github),
                      ),
                      keyboardType: TextInputType.url,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      onChanged: (text){
                        uwork = text;
                      },
                      decoration: InputDecoration(
                        labelText: 'Upwork Link',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(SimpleIcons.upwork),
                      ),
                      keyboardType: TextInputType.url,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      onChanged: (text){
                        fvr = text;
                      },
                      decoration: InputDecoration(
                        labelText: 'Fiverr Link',
                        labelStyle: kLabelStyle,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade600,
                        filled: true,
                        prefixIcon: Icon(SimpleIcons.fiverr),
                      ),
                      keyboardType: TextInputType.url,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => FinalCard(name: nm.toString(), description: desc.toString(), emailurl: eml.toString(), upworkrurl: uwork.toString(), fiverrurl: fvr.toString())));
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

// name: _namecontroller.toString(),description: _descriptioncontroller.toString(),emailurl: _emailcontroller.toString(), linkedinurl: _linkedincontroller.toString(), fburl: _facebookcontroller.toString(), githuburl: _githubcontroller.toString(), upworkrurl: _upworkcontroller.toString(), fiverrurl: _fiverrcontroller.toString(),

