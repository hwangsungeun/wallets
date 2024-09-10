import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order;

  // _blackColor < 앞에 _ 는 프라이빗하게 만들겠다는 의미
  final _blackColor = const Color(0xff1f2123);

  // : <이것은 받은 값으로 객체를 초기화 하겠단 뜻
  CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this. order,
  }) : isInverted = order.isEven;

  @override
  Widget build(BuildContext context) {
      return Transform.translate(
        offset: Offset(0, -20 * (order -1)),
        child: Container(
          // clipBehavior 컨테이너 영역 밖으로 넘었을때 어떻게 처리할지 정할수 있음
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: isInverted ? Colors.white : _blackColor,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            color: isInverted ? _blackColor : Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(code,
                          style: TextStyle(
                            color: isInverted ? _blackColor : Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Transform.scale(
                  scale: 2.2,
                  child: Transform.translate(
                    offset: const Offset(-5, 12),
                    child: Icon(
                      icon,
                      color: isInverted ? _blackColor : Colors.white,
                      size: 88,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}