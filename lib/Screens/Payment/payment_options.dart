import 'package:amar_shohor/Screens/Payment/widgets/bkashPay.dart';
import 'package:amar_shohor/Screens/Payment/widgets/creditcardinfotext.dart';
import 'package:amar_shohor/Screens/Payment/widgets/paymentMethodCart.dart';
import 'package:amar_shohor/Screens/Payment/widgets/visacardpay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import 'widgets/mastercardpay.dart';

class PaymentOptions extends StatefulWidget {
  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  bool isVisibleBcash = false;
  bool isVisibleMaser = false;
  bool isVisibleVisa = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'My Payment',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 15.sp),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xff196E55),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 5.w, right: 5.w),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.h, bottom: 0.5.h),
                  child: Text(
                    'Payment Options',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
                  child: Text(
                    'Lorem ipsum dolor amet, consetetur',
                    style: TextStyle(
                        color: Color(0xff707070),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      // Bkash Pay--------------------------
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isVisibleBcash = !isVisibleBcash;
                              });
                            },
                            child: PaymentMethodCart(
                              paymentName: 'Bkash',
                              imagelink: 'asset/bkash.png',
                            ),
                          ),
                          PO_Bkash(isVisibleBcash: isVisibleBcash),
                        ],
                      ),
                      // Master Card Pay -------------------
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isVisibleMaser = !isVisibleMaser;
                              });
                            },
                            child: PaymentMethodCart(
                              paymentName: 'Master Card',
                              imagelink: 'asset/master.png',
                            ),
                          ),
                          PO_MaserCard(isVisibleMaser: isVisibleMaser)
                        ],
                      ),
                      // Visa Card Pay -------------------
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isVisibleVisa = !isVisibleVisa;
                              });
                            },
                            child: PaymentMethodCart(
                              paymentName: 'Visa',
                              imagelink: 'asset/visa.png',
                            ),
                          ),
                          PO_VisaCard(isVisibleVisa: isVisibleVisa),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
