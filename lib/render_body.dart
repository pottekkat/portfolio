import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';

import './project_card.dart';
import './experience_card.dart';
import './education_card.dart';

final skills = ["ML Engineer", "Mobile App Developer", "Automation Engineer","ML Engineer"];
final experiences = [
  {
    "title": "Stakque - Junior Software Engineer",
    "date": "Jan 2020 - March 2020",
    "description":
        "Worked with international clients and developed tailored applications for mobile and web",
  },
  {
    "title": "Mitsogo - Customer Support Engineer",
    "date": "Jul 2019 - Dec 2019",
    "description":
        "Worked as consultant and support engineer for the product Hexnode. Dealt with customers from all over the world. Reported directly to the CEO",
  },
  {
    "title": "Electree Energy Solutions - Site Engineer(Part Time)",
    "date": "Nov 2018 - Jun 2019",
    "description":
        "Worked part time installing PV systems to domestic households across Kerala. Developed a software to predict potential clients from their monthly electricity usage",
  },
  {
    "title": "Bhabha Atomic Research Center - Project Trainee",
    "date": "May 2018 - Aug 2018",
    "description":
        "Researched and developed an embedded system to accurately determine the position of the shaft of a resolver. The project was very cheap compared to the alternatives without compromising the performance",
  },
];

final education = [
  {
    "title":
        "College Of Engineering Chengannur - \nElectrical and Electronics Engineering",
    "date": "Aug 2015 - Jul 2019",
    "description":
        "- Student Representative, IEEE Robotics and Automation Society Kerala Chapter\n- IEEE SIGHT Coordinator\n- Member and Team Lead, Developer Community\n- Member, IEEE Power and Energy Society",
  },
];

class RenderBody extends StatelessWidget {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              color: Color.fromRGBO(43, 122, 120, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                // color: Colors.white,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 500,
                //color: Color.fromRGBO(58, 175, 169, 100),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/coder.png',
                      fit: BoxFit.contain,
                      height: 500,
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          //color: Color.fromRGBO(58, 175, 169, 20),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Hi! I am Navendu",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 62,
                                    color: Color.fromRGBO(23, 37, 42, 100),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  // color: Colors.red,
                                  margin: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  child: TypewriterAnimatedTextKit(
                                    isRepeatingAnimation: true,
                                    speed: Duration(milliseconds: 200),
                                    alignment: Alignment.center,
                                    text: skills,
                                    textStyle: TextStyle(
                                      fontSize: 28,
                                      fontFamily: "OpenSans",
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(43, 122, 120, 100),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 50, horizontal: 70),
                                    // color: Colors.black,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text(
                                          "I work with",
                                          style: TextStyle(
                                            fontFamily: "OpenSans",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28,
                                            color:
                                                Color.fromRGBO(23, 37, 42, 100),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Tab(
                                              icon: Image.asset(
                                                  'assets/images/scikit.png'),
                                            ),
                                            Tab(
                                              icon: Image.asset(
                                                  'assets/images/matplotlib.png'),
                                            ),
                                            Tab(
                                              icon: Image.asset(
                                                  'assets/images/pandas.png'),
                                            ),
                                            Tab(
                                              icon: Image.asset(
                                                  'assets/images/numpy.png'),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Tab(
                                              icon: Image.asset(
                                                  'assets/images/jupyter.png'),
                                            ),
                                            Tab(
                                              icon: Image.asset(
                                                  'assets/images/firebase.png'),
                                            ),
                                            Tab(
                                              icon: Image.asset(
                                                  'assets/images/flutter.png'),
                                            ),
                                            Tab(
                                              icon: Image.asset(
                                                  'assets/images/dart.png'),
                                            ),
                                            Tab(
                                              icon: Image.asset(
                                                  'assets/images/python.png'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              color: Color.fromRGBO(43, 122, 120, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                // color: Colors.white,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 500,
                //color: Color.fromRGBO(58, 175, 169, 100),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          //color: Color.fromRGBO(58, 175, 169, 20),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Here are some of my projects",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                    color: Color.fromRGBO(23, 37, 42, 100),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Expanded(
                                  child: Container(
                                    //color: Colors.red,
                                    margin: EdgeInsets.all(20),
                                    child: Container(
                                      height: 120.0,
                                      child: ListView.builder(
                                        physics: BouncingScrollPhysics(),
                                        padding: EdgeInsets.only(left: 10.0),
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 8,
                                        itemBuilder: (ctx, index) {
                                          return ProjectCard(ctx, index);
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/coderNew.png',
                      fit: BoxFit.cover,
                      height: 500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              color: Color.fromRGBO(43, 122, 120, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                // color: Colors.white,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 500,
                //color: Color.fromRGBO(58, 175, 169, 100),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/educationCoder.png',
                      fit: BoxFit.contain,
                      height: 500,
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "Experience",
                                style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  color: Color.fromRGBO(23, 37, 42, 100),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  //color: Colors.red,
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  child: Container(
                                    height: 120.0,
                                    child: DraggableScrollbar.rrect(
                                      backgroundColor:
                                          Color.fromRGBO(43, 122, 120, 100),
                                      alwaysVisibleScrollThumb: true,
                                      controller: scrollController,
                                      child: ListView.builder(
                                        controller: scrollController,
                                        physics: BouncingScrollPhysics(),
                                        padding: EdgeInsets.only(left: 10.0),
                                        scrollDirection: Axis.vertical,
                                        itemCount: 4,
                                        itemBuilder: (ctx, index) {
                                          return ExperienceCard(
                                            experiences[index]["title"],
                                            experiences[index]["date"],
                                            experiences[index]["description"],
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              color: Color.fromRGBO(43, 122, 120, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                // color: Colors.white,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 500,
                //color: Color.fromRGBO(58, 175, 169, 100),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "Education",
                                style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  color: Color.fromRGBO(23, 37, 42, 100),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  //color: Colors.red,
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  child: Container(
                                    height: 120.0,
                                    child: ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      padding: EdgeInsets.only(left: 10.0),
                                      scrollDirection: Axis.vertical,
                                      itemCount: 1,
                                      itemBuilder: (ctx, index) {
                                        return EducationCard(
                                          education[index]["title"],
                                          education[index]["date"],
                                          education[index]["description"],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 60),
                                child: Wrap(
                                  direction: Axis.horizontal,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  alignment: WrapAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Tab(
                                      icon: Image.asset('assets/images/coe.png'),
                                    ),
                                    Padding(padding: EdgeInsets.all(30)),
                                    Tab(
                                      icon: Image.asset('assets/images/ieee.png'),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/contactCoder.png',
                      fit: BoxFit.contain,
                      height: 500,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              color: Color.fromRGBO(43, 122, 120, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                // color: Colors.white,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 500,
                //color: Color.fromRGBO(58, 175, 169, 100),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/callCoder.png',
                      fit: BoxFit.contain,
                      height: 500,
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "Contact",
                                style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  color: Color.fromRGBO(23, 37, 42, 100),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(50),
                                child: Column(children: <Widget>[
                                  Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.mail,
                                      color: Color.fromRGBO(23, 37, 42, 100),
                                    ),
                                    Padding(padding: EdgeInsets.only(right: 10)),
                                    Text(
                                      "email: ",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color.fromRGBO(43, 122, 120, 100),
                                      ),
                                    ),
                                    Text(
                                      "navendupottekkat@gmail.com",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color.fromRGBO(21, 73, 103, 100),
                                      ),
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                              
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.call,
                                      color: Color.fromRGBO(23, 37, 42, 100),
                                    ),
                                    Padding(padding: EdgeInsets.only(right: 10)),
                                    Text(
                                      "phone: ",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color.fromRGBO(43, 122, 120, 100),
                                      ),
                                    ),
                                    Text(
                                      "+91 9567210454",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color.fromRGBO(21, 73, 103, 100),
                                      ),
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.add_to_queue,
                                      color: Color.fromRGBO(23, 37, 42, 100),
                                    ),
                                    Padding(padding: EdgeInsets.only(right: 10)),
                                    Text(
                                      "github: ",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color.fromRGBO(43, 122, 120, 100),
                                      ),
                                    ),
                                    Text(
                                      "https://github.com/navendu-pottekkat",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color.fromRGBO(21, 73, 103, 100),
                                      ),
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.account_box,
                                      color: Color.fromRGBO(23, 37, 42, 100),
                                    ),
                                    Padding(padding: EdgeInsets.only(right: 10)),
                                    Text(
                                      "LinkedIn: ",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color.fromRGBO(43, 122, 120, 100),
                                      ),
                                    ),
                                    Text(
                                      "https://www.linkedin.com/in/navendup/",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color.fromRGBO(21, 73, 103, 100),
                                      ),
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                                ],),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
