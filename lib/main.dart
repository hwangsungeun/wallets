import 'package:flutter/material.dart';
import 'package:wallets/widgets/button.dart';
import 'package:wallets/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

// StatelessWidget
class App extends StatelessWidget {
  const App({super.key});

  /*
  * scaffold 스캇폴드는 화면 구조를 제공함
  *
  * Column 가로
  * Row 세로
  * SizedBox 그냥 사이즈가 있는 박스
  * Container child를 가지고 있는 단순한 박스
  * */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xff181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey, SungEun',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$5 194 482',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 44,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                          text: 'Transfer',
                          bgColor: Color(0xfff2b33a),
                          textColor: Colors.black),
                      Button(
                          text: 'Request',
                          bgColor: Color(0xff1f2123),
                          textColor: Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          color: Color(0xfffafafa),
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: const Color(0xfffafafa).withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded,
                    order: 1,
                  ),
                  CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9 785',
                    icon: Icons.currency_bitcoin_rounded,
                    order: 2,
                  ),
                  CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '428',
                    icon: Icons.attach_money_outlined,
                    order: 3,
                  ),
                  CurrencyCard(
                    name: 'Euro2',
                    code: 'EUR',
                    amount: '5 428',
                    icon: Icons.euro_rounded,
                    order: 4,
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}