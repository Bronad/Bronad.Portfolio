import 'package:flutter/material.dart';

const List<Widget> lan = <Widget>[
  Text("German"),
  Text("English")
];

bool isGerman = true;

class lanbutton extends StatefulWidget {



  @override
  State<lanbutton> createState() => lanbuttonState();
}

class lanbuttonState extends State<lanbutton> {

  @override
  Widget build(BuildContext context) {

    final List<bool> _selectedlan = <bool>[true, false];

    return ToggleButtons(
        direction: Axis.horizontal,
        children: lan,
        isSelected: _selectedlan,
        onPressed: (int index) {
        setState(() {
        for (int i = 0; i < _selectedlan.length; i++) {
          _selectedlan[i] = i == index;
        }
        if(index == 0){
          isGerman = true;
        }else{
          isGerman = false;
        }
        });
        },
      constraints: const BoxConstraints(
        minHeight: 40.0,
        minWidth: 80.0,
      ),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        selectedBorderColor: Colors.red[700],
        selectedColor: Colors.white,
        fillColor: Colors.red[200],
        color: Colors.red[400]
    );
  }
}
//
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class LanguageSwitchButton extends StatefulWidget {
//   const LanguageSwitchButton({Key? key}) : super(key: key);
//
//   @override
//   _LanguageSwitchButtonState createState() => _LanguageSwitchButtonState();
// }
//
// class _LanguageSwitchButtonState extends State<LanguageSwitchButton> {
//   String _selectedLanguage = 'en'; // default language is English
//
//   @override
//   void initState() {
//     super.initState();
//     _getSavedLanguage();
//   }
//
//   Future<void> _getSavedLanguage() async {
//     final prefs = await SharedPreferences.getInstance();
//     final selectedLanguage = prefs.getString('language');
//     if (selectedLanguage != null) {
//       setState(() {
//         _selectedLanguage = selectedLanguage;
//       });
//     }
//   }
//
//   Future<void> _saveSelectedLanguage(String language) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString('language', language);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         setState(() {
//           _selectedLanguage = _selectedLanguage == 'en' ? 'de' : 'en';
//           _saveSelectedLanguage(_selectedLanguage);
//         });
//       },
//       icon: Icon(
//         _selectedLanguage == 'en' ? Icons.flag : Icons.flag_rounded,
//         color: Colors.white,
//       ),
//     );
//   }
// }
