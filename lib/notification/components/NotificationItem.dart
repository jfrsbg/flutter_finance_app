import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String text;
  final String date;
  final String imagePath;
  final bool hasButton;
  final List<Color> colorsButton;
  final String titleButton;

  const NotificationItem({this.text, this.date, this.imagePath, this.hasButton = false, this.colorsButton, this.titleButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
		 elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: <Widget>[
              //AVATAR
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(this.imagePath),
                      fit: BoxFit.cover),
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[400],
                        offset: Offset(2, 1),
                        blurRadius: 8),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              //TEXT
              Expanded(
				 flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: Text(
                      this.text,
                      style: Theme.of(context).textTheme.subtitle2,
						  textAlign: TextAlign.justify,
                    )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        child: Text(
                      this.date,
                      style: Theme.of(context).textTheme.subtitle1,
                    )),
                  ],
                ),
              ),
			   this.hasButton ? Expanded(
				  flex: 2,
			     child: Padding(
			       padding: const EdgeInsets.only(left: 15),
			       child: Container(
				  height: 50,
				  decoration: BoxDecoration(
					 borderRadius: const BorderRadius.all(Radius.circular(30)),
					 gradient: LinearGradient(
					 begin: Alignment.topRight,
					 end: Alignment.bottomLeft,
					 // Add one stop for each color. Stops should increase from 0 to 1
					 stops: [0.2, 0.4, 0.6, 1],
					 colors: this.colorsButton)),
				  child: Center(child: Text(this.titleButton, style: TextStyle(color: Colors.white, fontSize: 20),)),
			       ),
			     ),
			   ) : Container()
            ],
          ),
        ),
      ),
    );
  }
}
