import 'package:finance_app/notification/components/NotificationItem.dart';
import 'package:finance_app/theme/GradientColors.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: <Widget>[
          NotificationItem(
            text: "You received a payment of \$120.00 from Jhon Smith",
            date: "08:39 AM",
            imagePath: "assets/images/me.jpg",
          ),
          NotificationItem(
            text: "James Smith request a payment of \$450.00",
            date: "07:00 AM",
            imagePath: "assets/images/random1.jpeg",
            hasButton: true,
            colorsButton: GradientColors.orange,
            titleButton: "Pay",
          ),
          NotificationItem(
            text: "You received a payment of \$120.00 from Jhon Smith",
            date: "08:39 AM",
            imagePath: "assets/images/mastercard.jpg",
          ),
          NotificationItem(
            text: "You received a payment of \$400.00 for Willan Henry",
            date: "08:39 AM",
            imagePath: "assets/images/reeves.jpg",
          ),
          NotificationItem(
            text: "Mithun kumar requested a payment of \$450.00",
            date: "07:00 AM",
            imagePath: "assets/images/free.jpeg",
            hasButton: true,
            colorsButton: GradientColors.green,
            titleButton: "Paid",
          ),
        ],
      ),
    );
  }
}
