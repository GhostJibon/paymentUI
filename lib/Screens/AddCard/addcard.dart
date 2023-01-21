import 'package:amar_shohor/Screens/AddCard/Widgets/cardColors.dart';
import 'package:amar_shohor/Screens/AddCard/Widgets/cardDetailsTFF.dart';
import 'package:amar_shohor/Screens/AddCard/Widgets/creditCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class AddCreditCard extends StatefulWidget {
  const AddCreditCard({super.key});

  @override
  State<AddCreditCard> createState() => _AddCreditCardState();
}

class _AddCreditCardState extends State<AddCreditCard> {
  Color cardColorSelect = Colors.black;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Credit_Card(
                  cardType: 'Visa',
                  cardNumber: '1234 - 3456 - 7543 - XXXX',
                  cardColor: cardColorSelect,
                  cardExpireDate: '12/2024',
                  cardCVV: '766',
                  cardHoldersName: 'Istiak Hossain Jibon'),
              Padding(
                padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
                child: Text(
                  'Choose card color',
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.w, right: 1.w),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          cardColorSelect = Color(0xff00267C);
                        });
                      },
                      child: CardColors(
                        cardcolor: Color(0xff00267C),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.w, right: 1.w),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          cardColorSelect = Color(0xff000000);
                        });
                      },
                      child: CardColors(
                        cardcolor: Color(0xff000000),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.w, right: 1.w),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          cardColorSelect = Color(0xffFF6300);
                        });
                      },
                      child: CardColors(
                        cardcolor: Color(0xffFF6300),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.w, right: 1.w),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          cardColorSelect = Color(0xffDD0000);
                        });
                      },
                      child: CardColors(
                        cardcolor: Color(0xffDD0000),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.w, right: 1.w),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          cardColorSelect = Color(0xff429676);
                        });
                      },
                      child: CardColors(
                        cardcolor: Color(0xff429676),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h, bottom: 1.h),
                child: Text(
                  'Card Details',
                  style:
                      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardDetailsTFF(
                        hintTexts: 'Holder Name',
                        tFFheight: 4.h,
                        tFFwidth: 42.5.w,
                        keyboardType: TextInputType.text,
                      ),
                      CardDetailsTFF(
                        hintTexts: 'Card Type',
                        tFFheight: 4.h,
                        tFFwidth: 42.5.w,
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  ),
                  CardDetailsTFF(
                    hintTexts: 'Card Number',
                    tFFheight: 4.h,
                    tFFwidth: 90.w,
                    keyboardType: TextInputType.number,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardDetailsTFF(
                        hintTexts: 'Ex Date',
                        tFFheight: 4.h,
                        tFFwidth: 42.5.w,
                        keyboardType: TextInputType.datetime,
                      ),
                      CardDetailsTFF(
                        hintTexts: 'CVV Code',
                        tFFheight: 4.h,
                        tFFwidth: 42.5.w,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        //Remove Function here
                      },
                      child: Container(
                        height: 6.h,
                        width: 42.5.w,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        //Remove Function here
                      },
                      child: Container(
                        height: 6.h,
                        width: 42.5.w,
                        decoration: BoxDecoration(
                          color: Color(0xff196E55),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                        child: Center(
                          child: Text(
                            '+ Add Card',
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.white),
                          ),
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
    );
  }
}
