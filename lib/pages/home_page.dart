import 'package:flutter/material.dart';
import 'package:flutter_wallet/widgets/card_account.dart';
import 'package:flutter_wallet/widgets/my_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_wallet/widgets/list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green[500],
        child: const Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 36,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 36,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        "My ",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Accounts",
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25.0),
            Container(
              color: Colors.grey[300],
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  CardAccount(
                    balance: 5250.40,
                    cardNumber: 12345678,
                    expMonth: 10,
                    expYear: 23,
                    color: Colors.purple[300],
                  ),
                  CardAccount(
                    balance: 540.40,
                    cardNumber: 98765432,
                    expMonth: 01,
                    expYear: 25,
                    color: Colors.green[300],
                  ),
                  CardAccount(
                    balance: 6050.40,
                    cardNumber: 23452345,
                    expMonth: 11,
                    expYear: 24,
                    color: Colors.red[300],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25.0),
            SmoothPageIndicator(
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade600,
              ),
              controller: _controller,
              count: 3,
            ),
            const SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyButton(
                    iconImagePath: 'assets/images/send-money.png',
                    buttonText: "Send",
                  ),
                  MyButton(
                    iconImagePath: 'assets/images/bill.png',
                    buttonText: "Bills",
                  ),
                  MyButton(
                    iconImagePath: 'assets/images/credit-card.png',
                    buttonText: "Pay",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: const [
                  MyListTile(
                    iconImagePath: 'assets/images/statistics.png',
                    tileTitle: 'Statistics',
                    tileSubtitle: 'Payments and Income',
                  ),
                  MyListTile(
                    iconImagePath: 'assets/images/cash-flow.png',
                    tileTitle: 'Transactions',
                    tileSubtitle: 'Transaction history',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
