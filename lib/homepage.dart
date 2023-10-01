import 'package:facebook_profile_ui/home.dart';
import 'package:facebook_profile_ui/profile_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int index=0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: _mainBody(),));
  }

  Widget _mainBody(){

    return Column(
      children: [
        _appBar(),
        _body(),
        _bottomBar(),
      ],
    );

  }


  Widget _body(){
    return Expanded(child: index==0?Home():ProfilePage());
  }

  Widget _appBar(){
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios),
          Spacer(),
          Text("Meet Patel",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
          Spacer(),
          Icon(Icons.edit),
          Icon(Icons.search),
        ],
      ),
    );
  }

  Widget _bottomBar(){
    return Container(

      color: Colors.black12,
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Row(
        children: [

          menuItem(Icons.home, "Home",(){

            print("Home");
            index=0;
            setState(() {

            });

          }),

          menuItem(Icons.supervised_user_circle, "Profile",(){

            print("profile");
            index=1;
            setState(() {

            });

          }),

        ],
      ),
    );
  }

  Widget menuItem(IconData icon,String label,Function clickFun)
  {
    return Expanded(
      child: InkWell(
        onTap: (){
          clickFun();
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            Text(label),
          ],
        ),
      ),
    );
  }



}
