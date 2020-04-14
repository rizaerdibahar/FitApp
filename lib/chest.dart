import 'package:flutter/cupertino.dart';
import 'package:ilkflutterapp/change_email.dart';
import 'package:ilkflutterapp/change_password.dart';
import 'package:flutter/material.dart';
import 'package:ilkflutterapp/home.dart';
import 'package:ilkflutterapp/more.dart';
import 'package:ilkflutterapp/add.dart';
import 'package:ilkflutterapp/exercises.dart';
import 'package:ilkflutterapp/settings.dart';

class chest extends StatefulWidget {
  @override
  _chestState createState() => _chestState();
}

class _chestState extends State<chest> {
  int _selectedIndex = 0;
  final List <Widget> _children = [
  ];
  List<String> litems=[
    "     Alt Chest Expansion",
    "     Chest Expansion",
    "     Chest Press",
    "     Push Ups",
    "     Renegade Row",
    "     Dumbbell Bench Press",
    "     Plyometric Push Up",
    "     Arm Scissors",
    "     Overhead Stretch",
    "     Reverse Angels",
  ];
  _onSelected(int index) {
    setState(() {

      _selectedIndex = index;
    });
  }

  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0XFFE5E5E5),
      appBar: new AppBar(
        backgroundColor: Color(0XFFE5E5E5),
        elevation: 0,
        leading: new Column(
          children: <Widget>[
            new IconButton(icon: Image.asset('images/back_icon.png',),
              onPressed: null,
              color: Colors.transparent,)
          ],
        ),
        title: new Column(
          children: <Widget>[
            Text(
              "                      Chest",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Rajdhani',
                color: Colors.black.withOpacity(0.67),
              ),
            ),
          ],
        ),
      ),

      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,

        children:<Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            color: Color.fromRGBO(255, 255,255, 37),
            height: 50.0,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: TextFormField(
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 11.0),
                    decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(vertical: 0.0),
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ), // icon is 48px widget.
                        ),
                        hintText: 'Search and Find',
                        hintStyle: TextStyle(fontSize:11.0)),
                  ),
                ),
              ],
            ),
          ),



          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16, right:16),
              color: Color(0XFFE5E5E5),
              child: ListView.separated(
                itemBuilder: (context, index){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height:10,),
                      Row(

                        children: <Widget>[
                          Container(

                            width: 90,
                            height:90,
                            child: ClipOval(child: Image.asset("images/chest/${index+1}.JPG",fit: BoxFit.cover, ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>home()),
                                    );
                                  }, child: Text(litems[index],
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Rajdhani',
                                    color: Colors.black.withOpacity(0.80),
                                  ),
                                ),
                                ),

                              ],
                            ),
                          ),

                          IconButton(icon: Icon(Icons.arrow_right), color: Colors.grey),

                        ],
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index,) => Divider(),
                itemCount: litems.length,
              ),
            ),
          )



        ],
      ),


      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(74, 70, 70, 80),),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: changePage,
          iconSize: 35,

          fixedColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(icon: Image.asset('images/home.png',),
                onPressed: () =>
                {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home()),

                  ),
                },
                color: Colors.transparent,),
              title: SizedBox(
                height: 0,
              ),
            ),

            BottomNavigationBarItem(
              icon: IconButton(icon: Image.asset('images/menu.png',),
                onPressed: () =>
                {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => more()),
                  ),
                },
                color: Colors.transparent,),
              title: SizedBox(
                height: 0,
              ),
            ),

            BottomNavigationBarItem(
              icon: IconButton(icon: Image.asset(
                'images/plus.png', width: 50, height: 50,),
                onPressed: () =>
                {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => add()),

                  ),
                },
                color: Colors.transparent,),
              title: SizedBox(
                height: 0,
              ),
            ),

            BottomNavigationBarItem(
              icon: IconButton(icon: Image.asset('images/dumbbell.png',),
                onPressed: () =>
                {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => exercises()),
                  ),
                },
                color: Colors.transparent,),
              title: SizedBox(
                height: 0,
              ),
            ),

            BottomNavigationBarItem(
              icon: IconButton(icon: Image.asset('images/settings_active.png',),
                onPressed: () =>
                {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => settings()),
                  ),
                },
                color: Colors.transparent,),
              title: SizedBox(
                height: 0,
              ),
            ),
          ],
        ),
      ),

    );
  }
}