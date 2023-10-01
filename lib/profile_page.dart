import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return _mainBody();
  }

  Widget _mainBody() {
    return ListView(
      children: [
        _imageSection(),
        _textSection(),
        _actionBarSection(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          width: double.maxFinite,
        height: 10,
        color: Colors.grey,)


      ],
    );
  }

  Widget _actionBarSection() {
    return Row(
      children: [

        _button(flex: 3, label: "Add to Story", backColor: Colors.deepPurple, textColor: Colors.white),

        _button(flex: 3, label: "Add to Story", backColor: Colors.deepPurple, textColor: Colors.white),

        _button(flex: 1, label: "...", backColor: Colors.deepPurple, textColor: Colors.white),

      ],
    );
  }

  Widget _button(
      {required int flex,
      required String label,
      required Color backColor,
      required Color textColor}) {
    return Expanded(
        flex: flex,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: Center(
            child: Text(
              label,
              style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
            ),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 12,
          ),
          decoration: BoxDecoration(
              color: backColor, borderRadius: BorderRadius.circular(10)),
        ));
  }

  Widget _imageSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.grey,
          ),
          Positioned(
            bottom: 0,
            left: 10,
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: Colors.orange,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _textSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Meet Patel",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 28),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Hi asd ad asjdh adha dhas jdajsd asjdgajhsd sajdasgdjasgh",
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
