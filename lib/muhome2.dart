import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myhome2 extends StatefulWidget {
  @override
  _myhome2State createState() => _myhome2State();
}

class _myhome2State extends State<myhome2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        title: Text("Profile"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: [
         ExpansionTile(
           title: Text("About Us"),
           leading: Icon(Icons.menu_open),
         ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderProfile(),
            items(),
            items(),
            items(),
          ],
        ),
      ),
    );
  }
}

class items extends StatelessWidget {
  const items({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15,left: 15,bottom: 15),
      child: Transform.translate(
        offset: Offset(0,-60),
        child: Card(
          child: ListTile(
            title: Text("Joined Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("21 August 2020",style: TextStyle(color: Colors.grey[900]),),
            leading: CircleAvatar(
              child: Icon(Icons.access_time_outlined,size: 40,color: Colors.red,),
              backgroundColor: Colors.white,
              radius: 40,
            ),
          ),
        ),
      ),
    );
  }
}

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Stack(
        children: [
          ClipPath(
            clipper: myclipper(),
            child: Container(
              height: MediaQuery.of(context).size.height*0.28,
              color: Colors.red,
            ),
          ),
          Align(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  maxRadius: 50,
                  backgroundImage: AssetImage("images/s5.jpg"),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.white,
                ),
                Text("User Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                Text("eslamhegazy968@gmail.com",style: TextStyle(color: Colors.grey[700]),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class myclipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height-100);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
