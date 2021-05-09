import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            padding: EdgeInsets.only(
              top: 5,
              left: 2,
              right: 2,
            ),
            children: [
              Header(),
              Content(),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.black12,
          ),
        ),
      ),
    );
  }
}

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        top: 5,
        left: 10,
        right: 10,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('USER PROFILE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
            ],
          ),
          SizedBox(height: 15),
          Text(
            '  User Name',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.purple),
          ),
          SizedBox(height: 15),
          Container(
            width: (size.width),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(FontAwesomeIcons.user),
                hintText: 'Enter User Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            '  Email id',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.purple),
          ),
          SizedBox(height: 15),
          Container(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(FontAwesomeIcons.envelope),
                hintText: 'Enter Email ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            '  Mobile Number',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.purple),
          ),
          SizedBox(height: 15),
          Container(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(FontAwesomeIcons.mobile),
                hintText: 'Enter you 10 digit mobile number ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            '  Date of Birth',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.purple),
          ),
          SizedBox(height: 15),
          Container(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(FontAwesomeIcons.calendarAlt),
                hintText: 'DD / MM / YYYY ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            '  Sex',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.purple),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text('  Male'),
              Container(
                child: Switch(
                  value: false,
                  onChanged: (bool state) {
                    print(state);
                  },
                ),
              ),
              Text('Female'),
              Container(
                child: Switch(
                  value: false,
                  onChanged: (bool state) {
                    print(state);
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'save',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(195, 35, 97, 1),
                            Color.fromRGBO(123, 31, 161, 1),
                          ])),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(195, 35, 97, 1),
                Color.fromRGBO(123, 31, 161, 1),
              ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              CircleAvatar(
                backgroundImage: AssetImage('assets/login.jpg'),
                radius: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 40,
                width: 40,
                child: Icon(
                  FontAwesomeIcons.images,
                  color: Colors.black38,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Lacey Fernandez ',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                height: 35,
                width: 35,
                child: Icon(
                  FontAwesomeIcons.edit,
                  color: Colors.black26,
                  size: 15,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
