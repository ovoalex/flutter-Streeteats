import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_food_delivery_app/blocs/basket/basket_bloc.dart';
import 'package:flutter_food_delivery_app/models/basket_model.dart';

class BasketScreen extends StatelessWidget {
  static const String routeName = '/basket';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => BasketScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Cart:'),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/edit-basket');
          },
              icon: Icon(Icons.edit))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container (
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(),
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/checkout');
                  },
                  child: Text('Check out'),
                ),
              ],
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text(
            'Utensils',
              style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Theme.of(context).accentColor),
          ),
          Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 10, bottom: 10),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5.0)
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Do you need Utensils?',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                    BlocBuilder<BasketBloc, BasketState> (
                      builder: (context, state) {
                        if (state is BasketLoading) {
                          return Center (
                            child: CircularProgressIndicator(),
                          );
                        }
                        else if (state is BasketLoaded) {
                          return SizedBox(
                            width: 100,
                            child: SwitchListTile(
                                dense: true,
                                value: state.basket.cutlery,
                                onChanged: (bool? newValue) {
                                  context.read<BasketBloc>().add(ToggleSwitch());
                                }),
                          );
                        }
                        else {
                          return Text('Something went wrong.');
                        }
                        return SizedBox(
                          width: 100,
                          child: SwitchListTile(
                              dense: true,
                              value: false,
                              onChanged: (bool? newValue) {}),
                        );
                      },
                    ),

                  ],
            ),
     ),
          Text(
            'Item',
          style: Theme.of(context)
          .textTheme
          .headline4!
          .copyWith(color: Theme.of(context).accentColor),
    ),
    BlocBuilder<BasketBloc, BasketState>(
      builder: (context, state) {
        if (state is BasketLoading) {
          return Center (
            child: CircularProgressIndicator(),
          );
        }

        if (state is BasketLoaded){
          return state.basket.items.length ==0
            ? Container(width: double.infinity,
              margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('No items in the Basket', textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline6,)
              ],
            ),
          )

            : ListView.builder(
            shrinkWrap: true,
            itemCount: state.basket
                .itemQuantity(state.basket.items)
                .keys
                .length,
            itemBuilder: (context, index){

              return  Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10,),
                padding: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5.0)
                ),
                child: Row(
                  children: [
                    Text(
                      '${state.basket
                      .itemQuantity(state.basket.items)
                      .entries.elementAt(index).value}x',
                      style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.red),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Text('${state.basket
                          .itemQuantity(state.basket.items)
                          .keys.elementAt(index).name}',

                        style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.red),
                      ),
                    ),

                    Text('\$${state.basket
                        .itemQuantity(state.basket.items)
                        .keys.elementAt(index).price}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              );
            });
        }
        return ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index){

              return  Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10,),
                padding: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5.0)
                ),
                child: Row(
                  children: [
                    Text(
                      '1x',
                      style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.red),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Text(
                        'Asada Taco',
                        style: Theme.of(context).textTheme.headline6,
                      ),),

                    Text(
                      '\$1.99',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              );
            }
          );
      }

    ),
              Container(
                width: double.infinity,
                height: 100,
                margin: const EdgeInsets.only(top: 10,),
                padding: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5.0),
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Image.asset('assets/foodtruckIcon.png'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                    Text('Delivery in 30minutes', style: Theme.of(context).textTheme.headline6,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                      'Change',
                          style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Theme.of(context).accentColor),
                    ))
                  ],)
                ],),
      ),
              Container(
                width: double.infinity,
                height: 100,
                margin: const EdgeInsets.only(top: 10,),
                padding: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5.0),
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocBuilder<BasketBloc, BasketState>(
                      builder: (context, state) {
                        if (state is BasketLoaded){
                          return
                          (state.basket.voucher == null) ?
                            Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 20,),
                              Text('Apply Coupon?', style: Theme.of(context).textTheme.headline6,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/vouchers');
                                  },
                                  child: Text(
                                    'Apply',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(color: Colors.red),
                                  ),
                                ),
                              ],
                            )
                              :Text('Your coupon is added!',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.red),
                          );
                        }
                        else {return Text('Something went wrong.');
                        }
                      },
                    ),
                    Image.asset('assets/appLogo.png'),
                  ],),
              ),
        Container(
          width: double.infinity,
          height: 100,
          margin: const EdgeInsets.only(top: 10,),
          padding: const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5.0),
          ),
          child: BlocBuilder<BasketBloc, BasketState>(
            builder: (context, state) {
              if (state is BasketLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is BasketLoaded) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal', style: Theme.of(context).textTheme.headline6,
                        ),
                        Text('\$${state.basket.subtotalString}', style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery Fee', style: Theme.of(context).textTheme.headline6,
                        ),
                        Text('\$0.99', style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.red),
                        ),
                        Text('\$${state.basket.totalString}', style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.red),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                  ],
                );
              }
              else {return Text('Something went wrong.');}

            },
          )
        ),
        ],
      ),
      ));
  }
}
