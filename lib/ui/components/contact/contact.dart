import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/utils/constants.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 75.0),
      alignment: Alignment.center,
      color: kBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 40.0),
            child: SelectableText(
              "CONTACT",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                height: 1.3,
              ),
            ),
          ),
          Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  width: width * 0.6,
                  child: TextFormField(
                    controller: _nameController,
                    minLines: 1,
                    maxLines: 3,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(top: 10.0, bottom: 0.0, left: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: kBackgroundColor),
                      hintText: "Type in your first name.",
                      fillColor: Colors.white,
                    ),
                    onChanged: (String? _) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name.';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  width: width * 0.6,
                  child: TextFormField(
                    controller: _emailController,
                    minLines: 1,
                    maxLines: 3,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(top: 10.0, bottom: 0.0, left: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: kBackgroundColor),
                      hintText: "Type in your email.",
                      fillColor: Colors.white,
                    ),
                    onChanged: (String? _) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email.';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.only(bottom: 25),
                  alignment: Alignment.center,
                  width: width * 0.6,
                  child: TextFormField(
                    controller: _messageController,
                    minLines: 5,
                    maxLines: 50,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(top: 30.0, bottom: 0.0, left: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: kBackgroundColor),
                      hintText: "Type in your message.",
                      fillColor: Colors.white,
                    ),
                    onChanged: (String? _) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your message.';
                      }
                      return null;
                    },
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF0D47A1),
                                Color(0xFF1976D2),
                                Color(0xFF42A5F5),
                              ],
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 50.0,
                          ),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 18.0),
                        ),
                        onPressed: () {},
                        child: Text('Submit'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            onChanged: () {
              _formKey.currentState?.save();
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText("Socials"),
            ],
          ),
        ],
      ),
    );
  }
}
