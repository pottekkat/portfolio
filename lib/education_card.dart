import 'package:flutter/material.dart';

class EducationCard extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  EducationCard(this.title, this.date, this.description);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top:40, right: 40, left: 40,),
        //color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(43, 122, 120, 100),
                  ),
                  softWrap: true,
              overflow: TextOverflow.visible,
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Text(
                  date,
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color.fromRGBO(23, 37, 42, 100),
                  ),
                  softWrap: true,
              overflow: TextOverflow.visible,
                ),
                Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Text(
              description,
              style: TextStyle(
                fontFamily: "OpenSans",
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Color.fromRGBO(21, 73, 103, 100),
              ),
              softWrap: true,
              overflow: TextOverflow.visible,
              textAlign: TextAlign.justify,
            ),
           
          ],
        ),
      ),
    );
  }
}
