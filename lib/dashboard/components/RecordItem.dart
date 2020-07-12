import 'package:flutter/material.dart';

class RecordItem extends StatelessWidget {
   final String title;
   final String type;
   final String date;
   final String value;
   final Color color;
   final IconData icon;
   final List<Color> colors;

  const RecordItem({this.title, this.type, this.colors, this.date, this.value, this.color, this.icon});

  @override
  Widget build(BuildContext context) {
	 final fullScreenSize = MediaQuery.of(context).size.width;

	 return Container(
		padding: EdgeInsets.only(top: 20, left: 20),
		child: Stack(
		   children: <Widget>[
			  Padding(
				 padding: const EdgeInsets.only(left: 20, right: 20),
				 child: Container(
					width: fullScreenSize,
					height: 100,
					decoration: BoxDecoration(
					   boxShadow: [
						  BoxShadow(color: Colors.grey[400], offset: Offset(2,1), blurRadius: 8),
					   ],
					   borderRadius: const BorderRadius.all(
						  Radius.circular(10)
					   ),
					   color: Theme.of(context).primaryColor
					),
					child: Column(
					  children: <Widget>[
					    Padding(
					      padding: const EdgeInsets.only(top: 14),
					      child: Row(
					         children: <Widget>[
					      	  SizedBox(width: 90,),
					      	  Expanded(
								 child: Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: <Widget>[
									   Text(title,
										  style: Theme.of(context).textTheme.headline2,
									   ),
									],
								 ),
							  ),
							  Expanded(
								 child: Padding(
								   padding: const EdgeInsets.only(right: 20),
								   child: Column(
									crossAxisAlignment: CrossAxisAlignment.end,
									children: <Widget>[
									   Text(date,
										  style: Theme.of(context).textTheme.subtitle1,
									   ),
									],
								   ),
								 ),
							  ),
					         ],
					      ),
					    ),
					  	Padding(
					  	  padding: const EdgeInsets.only(top: 10),
					  	  child: Row(
							children: <Widget>[
							   SizedBox(width: 90,),
							   Expanded(
								  child: Column(
									 crossAxisAlignment: CrossAxisAlignment.start,
									 children: <Widget>[
										Text(type,
										   style: Theme.of(context).textTheme.subtitle1,
										),
									 ],
								  ),
							   ),
							   Expanded(
								  child: Padding(
									 padding: const EdgeInsets.only(right: 20),
									 child: Column(
										crossAxisAlignment: CrossAxisAlignment.end,
										children: <Widget>[
										   Text(value,
											  style: TextStyle(
												 color: color,
												 fontSize: 17
											  ),
										   ),
										],
									 ),
								  ),
							   ),
							],
						 ),
					  	),
					  ],
					),
				 ),
			  ),
			  Positioned(
				 top: 8,
				 child: Container(
					width: 90,
					height: 80,
					decoration: BoxDecoration(
					   boxShadow: [
						  BoxShadow(color: Colors.grey[400], offset: Offset(2,1), blurRadius: 8),
					   ],
					   borderRadius: const BorderRadius.all(
						  Radius.circular(10)
					   ),
					   gradient: LinearGradient(
						  begin: Alignment.topRight,
						  end: Alignment.bottomLeft,
						  // Add one stop for each color. Stops should increase from 0 to 1
						  stops: [0.2, 0.4, 0.6, 1],
						  colors: colors
					   )
					),
					child: Icon(
					   icon,
					   color: Theme.of(context).primaryColor,
					   size: 50,
					),
				 ),
			  )
		   ],
		),
	 );
  }
}
