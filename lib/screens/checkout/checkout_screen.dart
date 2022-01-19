import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  static const String routeName = '/checkout';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => CheckoutScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [IconButton(onPressed: () {
                      Navigator.of(context).pop();
                    },
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                      ),
                    ),
                      Expanded(child: Text('Checkout', style: Theme
                          .of(context)
                          .textTheme
                          .headline4!),
                      )
                    ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text('Delivery Address', style: Theme
                          .of(context)
                          .textTheme
                          .headline3!),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                '128 N Garey Ave, Pomona, CA 91335',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(color: Colors.white),
                              ),
                            ),

                            TextButton(onPressed: () {},
                              child: Text('Change', style:
                              Theme
                                  .of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(color: Colors.red
                              ),
                              ),
                            ),
                          ],
                        )
                    ),
                    Container(
                      height: 20,
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Payment method: ',
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline3!),
                          TextButton(onPressed: () {},
                              child: Row(

                                children: [
                                  Icon(Icons.add),
                                  Text('Add card', style:
                                  Theme
                                      .of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(color: Colors.red,),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        alignment: Alignment.centerLeft,

                        padding: const EdgeInsets.only(left: 20, right: 20),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.white,
                              )
                          ),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Cash on delivery', style:
                            Theme.of(context)
                            .textTheme
                            .headline6!),
                            Container(
                              width: 15,
                              height: 15,
                              decoration: ShapeDecoration(shape: CircleBorder(
                                side: BorderSide(color: Colors.red),
                              )),)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        alignment: Alignment.centerLeft,

                        padding: const EdgeInsets.only(left: 20, right: 20),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.white,
                              )
                          ),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('VISA **** **** **** 9010', style:
                            Theme.of(context)
                                .textTheme
                                .headline6!),
                            Container(
                              width: 15,
                              height: 15,
                              decoration: ShapeDecoration(shape: CircleBorder(
                                side: BorderSide(color: Colors.red),
                              )),)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        alignment: Alignment.centerLeft,

                        padding: const EdgeInsets.only(left: 20, right: 20),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.white,
                              )
                          ),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Paypal: johndoe@gmail.com',style:
                            Theme.of(context)
                                .textTheme
                                .headline6!),
                            Container(
                              width: 15,
                              height: 15,
                              decoration: ShapeDecoration(shape: CircleBorder(
                                side: BorderSide(color: Colors.red),
                              )),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50),
                              shape: RoundedRectangleBorder(),
                              primary: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/checkout');
                            },
                            child: Text('Order Now'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]
        )
    );
  }
}
