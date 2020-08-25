import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:seller_panel/widgets/button.dart';
import 'package:seller_panel/widgets/constants.dart';

class ProductInfoPage extends StatefulWidget {
  @override
  _ProductInfoPageState createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  final List<String> images = [
    'assets/products/component.png',
  ];
  final buttonColor;
  bool buttonState = true;

  void _buttonChange() {
    setState(() {
      buttonState = !buttonState;
    });
  }

  _ProductInfoPageState({this.buttonColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.notifications_none, color: kIconsColor),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Carousel(images: images),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 26.0),
                        child: Row(
                          children: [
                            Text(
                              'COLOR:',
                              style: kCommonTextStyle.copyWith(
                                fontSize: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 14.0),
                              child: Text(
                                'Black',
                                style: kCommonTextStyle.copyWith(
                                  fontSize: 15,
                                  color: Color(0xFFFF6969),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CustomButton(
                              color: Colors.white,
                              name: 'Black',
                              width: 5,
                              height: 20,
                              radius: 2,
                              borderWidth: 2.0,
                              borderColor: Color(0xFFFF6969),
                              textColor: Color(0xFFFF6969),
                              textSize: 12,
                            ),
                            CustomButton(
                              color: Colors.white,
                              name: 'Black',
                              width: 5,
                              height: 20,
                              radius: 2,
                              borderWidth: 2.0,
                              borderColor: Color(0xFF727C8E),
                              textColor: Color(0xFF727C8E),
                              textSize: 12,
                            ),
                            CustomButton(
                              color: Colors.white,
                              name: 'Black',
                              width: 5,
                              height: 20,
                              radius: 2,
                              borderWidth: 2.0,
                              borderColor: Color(0xFF727C8E),
                              textColor: Color(0xFF727C8E),
                              textSize: 12,
                            ),
                            CustomButton(
                              color: Colors.white,
                              name: 'Black',
                              width: 5,
                              height: 20,
                              radius: 2,
                              borderWidth: 2.0,
                              borderColor: Color(0xFF727C8E),
                              textColor: Color(0xFF727C8E),
                              textSize: 12,
                            ),
                            CustomButton(
                              color: Colors.white,
                              name: 'Black',
                              width: 5,
                              height: 20,
                              radius: 2,
                              borderWidth: 2.0,
                              borderColor: Color(0xFF727C8E),
                              textColor: Color(0xFF727C8E),
                              textSize: 12,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 26.0),
                        child: Row(
                          children: [
                            Text(
                              'RAM:',
                              style: kCommonTextStyle.copyWith(
                                fontSize: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 14.0),
                              child: Text(
                                '16GB',
                                style: kCommonTextStyle.copyWith(
                                  fontSize: 15,
                                  color: Color(0xFFFF6969),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CustomButton(
                              color: Colors.white,
                              name: '16GB',
                              width: 5,
                              height: 20,
                              radius: 2,
                              borderWidth: 2.0,
                              borderColor: Color(0xFFFF6969),
                              textColor: Color(0xFFFF6969),
                              textSize: 12,
                            ),
                            CustomButton(
                              color: Colors.white,
                              name: '64GB',
                              width: 5,
                              height: 20,
                              radius: 2,
                              borderWidth: 2.0,
                              borderColor: Color(0xFF727C8E),
                              textColor: Color(0xFF727C8E),
                              textSize: 12,
                            ),
                            CustomButton(
                              color: Colors.white,
                              name: '128GB',
                              width: 5,
                              height: 20,
                              radius: 2,
                              borderWidth: 2.0,
                              borderColor: Color(0xFF727C8E),
                              textColor: Color(0xFF727C8E),
                              textSize: 12,
                            ),
                            CustomButton(
                              color: Colors.white,
                              name: '8GB',
                              width: 5,
                              height: 20,
                              radius: 2,
                              borderWidth: 2.0,
                              borderColor: Color(0xFF727C8E),
                              textColor: Color(0xFF727C8E),
                              textSize: 12,
                            ),
                            CustomButton(
                              color: Colors.white,
                              name: '4GB',
                              width: 5,
                              height: 20,
                              radius: 2,
                              borderWidth: 2.0,
                              borderColor: Color(0xFF727C8E),
                              textColor: Color(0xFF727C8E),
                              textSize: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: buttonState ? null : _buttonChange,
                            child: Container(
                              width: 78,
                              height: 31,
                              decoration: BoxDecoration(
                                color: Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: Center(
                                child: Text(
                                  'Details',
                                  style:
                                      kDashBoardText.copyWith(fontSize: 13.0),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: buttonState ? _buttonChange : null,
                            child: Container(
                              width: 78,
                              height: 31,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: Center(
                                child: Text(
                                  'Review',
                                  style:
                                      kDashBoardText.copyWith(fontSize: 13.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Aenean nec auctor libero. Maecenas ut libero sed massa pulvinar gravida eu non magna. Vivamus ipsum erat, auctor id pellentesque id, interdum vitae erat. In hac habitasse platea dictumst. In a sem felis.',
                          textAlign: TextAlign.justify,
                          style: kCommonTextStyle.copyWith(
                            fontSize: 15,
                            color: Color(0xFF515C6F),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.08,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              color: Color(0xFF60AA87),
              child: Center(
                child: Text(
                  'EDIT',
                  style:
                      kBoldedText.copyWith(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              color: Color(0xFFFF6969),
              child: Center(
                child: Text(
                  'DELETE',
                  style:
                      kBoldedText.copyWith(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  const Carousel({
    Key key,
    @required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider.builder(
            itemCount: images.length,
            options: CarouselOptions(
              height: 400,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Center(
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                    width: 267,
                    height: 365,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 29.0, top: 58),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Name',
                  style: kDashBoardText.copyWith(fontSize: 15.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: RatingButton(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 12.0),
                  child: Text(
                    'Rs.144499',
                    style: kBoldedText.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Text(
                  'Aliquam in urna tempus, mattis enim non,\n filisis augue.',
                  style: kCommonTextStyle.copyWith(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RatingButton extends StatelessWidget {
  const RatingButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 19,
      decoration: BoxDecoration(
        color: Color(0xFFFF6969),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.star,
            size: 13,
          ),
          Text(
            '4.9',
            style: kDashBoardText.copyWith(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
