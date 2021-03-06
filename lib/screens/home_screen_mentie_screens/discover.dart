import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mentearn/screens/home_screen_mentie_screens/apply.dart';
import 'package:mentearn/screens/whitescreen.dart';

final _firestore = FirebaseFirestore.instance;
final CollectionReference collectionUser =
    FirebaseFirestore.instance.collection('mentors');
final CollectionReference collectionUser2 =
    FirebaseFirestore.instance.collection('mentees');
late User loggedInUser;
final _auth = FirebaseAuth.instance;
String area = "";

class Interests extends StatefulWidget {
  @override
  _InterestsState createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                //messagesStream();
                _auth.signOut();
                Navigator.pop(context);
                //Implement logout functionality
              }),
        ],*/
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Area of Interests',
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        //reverse: true,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.025,
            vertical: MediaQuery.of(context).size.height * 0.02),
        children: [
          MentorAreaButton(
              title: "Artificial Intelligence",
              color: Colors.green,
              onPressed: () {
                area = "Artificial Intelligence";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Backend Development",
              color: Colors.green,
              onPressed: () {
                area = "Backend Development";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Business Development",
              color: Colors.green,
              onPressed: () {
                area = "Business Development";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Business Law",
              color: Colors.green,
              onPressed: () {
                area = "Business Law";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Communication",
              color: Colors.green,
              onPressed: () {
                area = "Communication";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Cyber Security",
              color: Colors.green,
              onPressed: () {
                area = "Cyber Security";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Data Science",
              color: Colors.green,
              onPressed: () {
                area = "Data Science";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Design",
              color: Colors.green,
              onPressed: () {
                area = "Design";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Entrepreneurship",
              color: Colors.green,
              onPressed: () {
                area = "Entrepreneurship";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Economy",
              color: Colors.green,
              onPressed: () {
                area = "Economy";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Engineering",
              color: Colors.green,
              onPressed: () {
                area = "Engineering";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Frontend Development",
              color: Colors.green,
              onPressed: () {
                area = "Frontend Development";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Game Development",
              color: Colors.green,
              onPressed: () {
                area = "Game Development";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Health and Sports",
              color: Colors.green,
              onPressed: () {
                area = "Health and Sports";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Human Resources",
              color: Colors.green,
              onPressed: () {
                area = "Human Resources";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Languages",
              color: Colors.green,
              onPressed: () {
                area = "Languages";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Math",
              color: Colors.green,
              onPressed: () {
                area = "Math";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Music",
              color: Colors.green,
              onPressed: () {
                area = "Music";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Marketing",
              color: Colors.green,
              onPressed: () {
                area = "Marketing";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Management",
              color: Colors.green,
              onPressed: () {
                area = "Management";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Machine Learning",
              color: Colors.green,
              onPressed: () {
                area = "Machine Learning";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Mobile Application Development",
              color: Colors.green,
              onPressed: () {
                area = "Mobile Application Development";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Project Management",
              color: Colors.green,
              onPressed: () {
                area = "Project Management";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Social Sciences",
              color: Colors.green,
              onPressed: () {
                area = "Social Sciences";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Science",
              color: Colors.green,
              onPressed: () {
                area = "Science";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Self-improvement",
              color: Colors.green,
              onPressed: () {
                area = "Self-improvement";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Sales",
              color: Colors.green,
              onPressed: () {
                area = "Sales";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
          MentorAreaButton(
              title: "Web Development",
              color: Colors.green,
              onPressed: () {
                area = "Web Development";
                Navigator.pushNamed(context, DiscoverStream.id);
              }),
        ],
      ),
    );
  }
}

class MentorAreaButton extends StatelessWidget {
  MentorAreaButton(
      {required this.title, required this.color, required this.onPressed});

  final Color color;
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.005),
      child: Material(
        elevation: 8.0,
        color: color,
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.width * 0.02),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: MediaQuery.of(context).size.height * 0.05,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              fontSize: 17.0,
            ),
          ),
        ),
      ),
    );
  }
}

class DiscoverStream extends StatefulWidget {
  static const String id = 'discover_screen_Mentee';

  @override
  State<DiscoverStream> createState() => _DiscoverStreamState();
}

class _DiscoverStreamState extends State<DiscoverStream> {
  late String department;
  late String email;
  late String fullname;
  late String position;
  late String bio;
  late String mentee;
  late String interest;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        /*actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                //messagesStream();
                _auth.signOut();
                Navigator.pop(context);
                //Implement logout functionality
              }),
        ],*/
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Discover Mentors',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      /*AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Discover Mentors',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),*/
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.77,
              child: StreamBuilder<QuerySnapshot>(
                stream: _firestore.collection('mentors').snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.lightBlueAccent,
                      ),
                    );
                  }
                  List<Discover> mentorBoxes = [];
                  final mentors = snapshot.data!.docs; // as Iterable;
                  /*mentors.sort((b, a) {
                    return b["timestamp"].compareTo(a["timestamp"]);
                  });*/

                  for (var mentor in mentors as Iterable) {
                    department = mentor.data()['interests'];
                    email = mentor.data()['email'];
                    fullname = mentor.data()['fullname'];
                    position = mentor.data()['profession'];
                    bio = mentor.data()['bio'];
                    mentee = mentor.data()['mentee'];
                    interest = mentor.data()['interests'];
                    /*final messageText = mentor.data()['text'];
                final messageSender = mentor.data()['sender'];*/

                    if (area == interest && mentee == "") {
                      final mentorBox = Discover(
                        department: department,
                        email: email,
                        fullname: fullname,
                        position: position,
                        bio: bio,
                      );
                      mentorBoxes.add(mentorBox);
                    }
                  }
                  //print(mentorBoxes.length);
                  return ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    //reverse: true,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.025,
                        vertical: MediaQuery.of(context).size.height * 0.02),
                    children: mentorBoxes,
                  );
                },
              ),
            ),
          ]),
    );
  }
}

class Discover extends StatefulWidget {
  final String department;
  final String fullname;
  final String position;
  final String bio;
  final String email;
  Discover(
      {required this.department,
      required this.fullname,
      required this.position,
      required this.bio,
      required this.email});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return /*Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Text(
            department,
            style: TextStyle(fontSize: 14.0, color: Colors.black54),
          ),
          Text(
            fullname,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );*/
        Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.025),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            border: Border.all(color: Colors.grey)),
        //height: MediaQuery.of(context).size.height * 0.30,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  //padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                      child: Text(
                    widget.department,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomLeft: Radius.circular(6)),
                      color: Colors.green),
                  height: MediaQuery.of(context).size.height * (0.05),
                  width: MediaQuery.of(context).size.width * (0.25),
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
            /*CircleAvatar(
              radius: 30,
            ),*/
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04),
              child: Text(
                widget.fullname,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0005,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04),
              child: Text(widget.position,
                  style: TextStyle(fontSize: 15, color: Color(0xFF585C60))),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04),
              child: Text(widget.bio,
                  style: TextStyle(fontSize: 15, color: Color(0xFF585C60))),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.04,
                child: OutlinedButton(
                  child: Text(
                    '         Apply         ',
                    style: TextStyle(color: Color(0xFF66a865)),
                  ),
                  style: OutlinedButton.styleFrom(
                    onSurface: Color(0xFF497a48),
                    primary: Color(0xFF497a48),
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Color(0xFF66a865), width: 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: () async {
                    await collectionUser2
                        .doc(loggedInUser.email.toString())
                        .update(
                            {"requested_mentor": widget.email, "mentor": ""});
                    Navigator.pushNamed(context, Apply.id);
                  },
                ) /*OutlinedButton(,
                child: Text("Outline Button", style: TextStyle(fontSize: 10.0),),
                highlightedBorderColor: Colors.red,
                disabledTextColor: Colors.red,
                color: Colors.red,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                highlightColor: Colors.red,
                hoverColor: Colors.red,
                disabledBorderColor: Colors.red,
                focusColor: Colors.red,
                splashColor: Colors.red,
                onPressed: () {},
              ),*/
                ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            )
          ],
        ),
      ),
    );
  }
}
