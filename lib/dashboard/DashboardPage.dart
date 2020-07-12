import 'package:finance_app/dashboard/components/AccountItem.dart';
import 'package:finance_app/dashboard/components/RecordItem.dart';
import 'package:finance_app/theme/GradientColors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fullScreenSize = MediaQuery.of(context).size.width;

    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            //List of account
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  "List of Account",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 20,
                    fontFamily: "Roboto",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Vertical list items
            Container(
              padding: const EdgeInsets.only(left: 10, right: 18),
              height: 110,
              child: ListView(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  AccountItem(
                      title: "Bank Account",
                      price: "\$250,00",
                      colors: GradientColors.purple),
                  AccountItem(
                      title: "Credit Card",
                      price: "\$1.500,00",
                      colors: GradientColors.orange),
                  AccountItem(
                      title: "Cash",
                      price: "\$800,00",
                      colors: GradientColors.green),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //TOTAL BALANCE
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[400],
                        offset: Offset(2, 1),
                        blurRadius: 5),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                  color: Colors.white,
                ),
                height: 120,
                width: fullScreenSize,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "\$4.800,00",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Total Balance",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //LAST RECORDS OVERVIEW
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Last Records Overview",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 20,
                    fontFamily: "Roboto",
                  ),
                ),
              ),
            ),
            RecordItem(
              colors: GradientColors.orange,
              title: "Groceries",
              type: "Credit Card",
              date: "Today",
              value: "\$250.00",
              color: GradientColors.orange.last,
              icon: FontAwesomeIcons.shoppingCart,
            ),
            RecordItem(
              colors: GradientColors.purple,
              title: "Clothes",
              type: "Credit Card",
              date: "03/04/2018",
              value: "\$100.00",
              color: GradientColors.purple.last,
              icon: FontAwesomeIcons.tshirt,
            ),
            RecordItem(
              colors: GradientColors.green,
              title: "Rental",
              type: "Cash",
              date: "01/03/2018",
              value: "\$250.00",
              color: Color(0xff75f2e6),
              icon: FontAwesomeIcons.home,
            )
          ],
        )
      ],
    );
  }
}
