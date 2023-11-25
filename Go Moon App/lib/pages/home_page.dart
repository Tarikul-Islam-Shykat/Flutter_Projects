import 'package:flutter/material.dart';
import 'package:go_moon_ui/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({super.key}); // const removed as we have other properties, yet to be initialized

  @override
  Widget build(BuildContext context) {

    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(

          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),

          child: Stack(
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                _pageTitle(),
                bottomWidgetsList(),
              ],
            ),
              Align(
                alignment: Alignment.centerRight,
                child : _astroImageWidget(),
              ),
            ],
          ),

        ),
      ),
    );
  }

  Widget bottomWidgetsList(){
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          _destinationDropDown(),
          _travellersInformationWidgets(),
          _rideButton(),
        ],

      ),
    );
  }

  Widget _astroImageWidget(){
    return   Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image:  AssetImage("assets/images/astro_moon.png")
        ),
      ),
    );
  }

  Widget _pageTitle(){
    return const Text(
        "# Go Moon",
      style: TextStyle(
        color:  Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800
      ),
    );
  }

  Widget _destinationDropDown(){

    List<String> _items =[ // string to drop down
      'james webb stattion',
      'preneure station',
    ];
    
    return CustomDropDownClass(values: _items, width: _deviceWidth);

  }

  Widget _travellersInformationWidgets() {

    List<String> _items =[ // string to drop down
      '1',
      '2',
      '3',
      '4',
    ];

    List<String> travel_classes =[ // string to drop down
      'Economy',
      'Business',
      'First Class',
      'Suits',
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownClass(values: _items, width: _deviceWidth * .45),
        CustomDropDownClass(values: travel_classes, width: _deviceWidth * .40),

      ],
    );

  }

  Widget _rideButton(){
    return Container(
      width:  _deviceWidth,
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.005),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        onPressed: (){},
        child: const Text(
          "Book a ride",
          style: TextStyle(
            color:  Colors.black
          ),

        ),
        ),
    );
  }




}
