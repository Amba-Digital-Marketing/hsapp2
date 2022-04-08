import 'package:hsapp2/utilities/themeStyles.dart';
import 'package:hsapp2/widgets/transactionCard.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 16.0,
              top: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ACTIVITIES', style: ThemeStyles.primaryTitle),
                Text('See All', style: ThemeStyles.seeAll),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                // TransactionCard(
                //   color: Color.fromARGB(255, 226, 2, 2),
                //   letter: 'B',
                //   title: 'PAY BENEFICARY',
                //   subTitle: 'pay for beneficary here',
                //   price: '2000',
                // ),
                // TransactionCard(
                //   color: Color.fromARGB(255, 4, 51, 153),
                //   letter: 'L',
                //   title: 'Pay loans',
                //   subTitle: 'Pay for borrowed loans here',
                //   price: '20,000 ',
                // ),
                // TransactionCard(
                //   color: Color.fromARGB(255, 3, 23, 75),
                //   letter: 'W',
                //   title: 'Withdraw ',
                //   subTitle: 'withdraw from here',
                //   price: '- 59000',
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
