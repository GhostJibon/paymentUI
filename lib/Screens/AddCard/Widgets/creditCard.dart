import 'package:amar_shohor/Screens/Payment/widgets/creditcardinfotext.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Credit_Card extends StatelessWidget {
  const Credit_Card(
      {required this.cardType,
      required this.cardNumber,
      required this.cardColor,
      required this.cardExpireDate,
      required this.cardCVV,
      required this.cardHoldersName});
  final Color cardColor;
  final String cardType;
  final String cardNumber;
  final String cardHoldersName;
  final String cardExpireDate;
  final String cardCVV;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 23.h,
          width: 90.w,
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          child: Padding(
            padding: EdgeInsets.all(4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('asset/creditcard.png'),
                    Text(
                      cardType,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 13.sp),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.h, bottom: 3.h),
                  child: CreditCardInfoText(cardinfo: cardNumber),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CreditCardInfoText(cardinfo: 'Card Holder Name'),
                        Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: CreditCardInfoText(cardinfo: cardHoldersName),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CreditCardInfoText(cardinfo: 'Expires On'),
                        Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: CreditCardInfoText(cardinfo: cardExpireDate),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CreditCardInfoText(cardinfo: 'CVV'),
                        Padding(
                          padding: EdgeInsets.only(top: 1.h),
                          child: CreditCardInfoText(cardinfo: cardCVV),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
