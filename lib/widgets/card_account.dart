import 'package:flutter/material.dart';

class CardAccount extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expMonth;
  final int expYear;
  // ignore: prefer_typing_uninitialized_variables
  final color;

  const CardAccount(
      {required this.balance,
      required this.cardNumber,
      required this.expMonth,
      required this.expYear,
      required this.color,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Balance',
                  style: TextStyle(color: Colors.white),
                ),
                Image.asset(
                  'assets/images/visa.png',
                  height: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '\$' + balance.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  expMonth.toString() + '/' + expYear.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
