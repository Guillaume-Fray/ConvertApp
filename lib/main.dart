import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:convert_em_all/climbing_page.dart';
import 'package:convert_em_all/unit.dart';



  void main() => runApp(ConvertApp());

  class ConvertApp extends StatelessWidget {
    // This widget is the root of the application.
    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.blue,
            leading: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(6.0, 4.0, 4.0, 4.0),
                child: CircleAvatar(
                  radius: 5.0,
                  backgroundImage: AssetImage(
                    "assets/Logo1.png",
                  ),
                  child: Builder( // to avoid this error: "navigator operation requested with a context that does                                        not include a navigator statefulwidget"
                    builder:(context) => FlatButton(
                        onPressed:  () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ClimbingScreen()),
                          );
                        },
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        padding: EdgeInsets.all(48.0),
                        child: null,
                    ),
                  ),
                ),
              ),
            ),
            title: _title(),
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.close),
                onPressed: () => exit(0),
              ),
            ],
          ),
          body: _BodyWidget(),
        ),
      );
    }

  }


  Widget _title(){
    return new Text(
      'Convert\'em all',
      textAlign: TextAlign.center,
      style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    );
  }


  class _BodyWidget extends StatefulWidget{
    @override
    State<StatefulWidget> createState() => _BodyWidgetState();
  }


  class _BodyWidgetState extends State<_BodyWidget>{

    String _newValue1, _newValue2;
    String _unitType;
    String _areaType;
    String _currencyType;
    String _energyType;
    String _lengthType;
    String _massType;
    String _pressureType;
    String _speedType;
    String _temperatureType;
    String _timeType;
    String _volumeType;


    List<String> _unitTypes = new List<String>();
    List<String> _areaTypes = new List<String>();
    List<String> _currencyTypes = new List<String>();
    List<String> _energyTypes = new List<String>();
    List<String> _lengthTypes = new List<String>();
    List<String> _massTypes = new List<String>();
    List<String> _pressureTypes = new List<String>();
    List<String> _speedTypes = new List<String>();
    List<String> _temperatureTypes = new List<String>();
    List<String> _timeTypes = new List<String>();
    List<String> _volumeTypes = new List<String>();


    @override
    initState(){
      super.initState();
      _unitTypes.addAll(["Area","Currency","Energy","Length","Mass","Pressure","Speed","Temperature","Time","Volume"]);
      _areaTypes.addAll(["Square kilometer","Square meter","Square mile","Square Yard","Square foot","Square inch","Hectare","Acre"]);
      _currencyTypes.addAll(["Euros (€)","Pounds (£)","US Dollars (\$)"]);
      _energyTypes.addAll(["Joule","Kilojoule","Gram calorie","Kilocalorie (C)","Watt hour","Kilowatt hour","Electronvolt"]);
      _lengthTypes.addAll(["Kilometre","Metre","Centimetre","Millimetre","Mile","Yard","Foot","Inch","Nautical mile"]);
      _massTypes.addAll(["Tonne","Kilogram","Gram","Milligram","Imperial ton","US ton","Stone","Pound","Ounce"]);
      _pressureTypes.addAll(["Atmosphere","Bar","Pascal"]);
      _speedTypes.addAll(["Kilometer per hour","Meter per second","Mile per hour","Foot per second","Knot"]);
      _temperatureTypes.addAll(["Celsius","Farhenheit","Kelvin"]);
      _timeTypes.addAll(["Second","Minute","Hour","Day","Year"]);
      _volumeTypes.addAll(["US liquid gallon","US liquid quart","US liquid pint","US legal cup","US fluid ounce","US tablespoon","US teaspoon","Cubic meter","Litre","Millilitre","Imperial gallon","Imperial quart","Imperial pint","Imperial cup","Imperial fluid ounce","Imperial tablespoon","Imperial teaspoon","Cubic foot","Cubic inch"]);


      _newValue1 = getValue();
      _newValue2 = getValue();
      _unitType = _unitTypes.elementAt(3);
      _areaType = _areaTypes.elementAt(0);
      _currencyType = _currencyTypes.elementAt(1);
      _energyType = _energyTypes.elementAt(0);
      _lengthType = _lengthTypes.elementAt(0);
      _massType = _massTypes.elementAt(1);
      _pressureType = _pressureTypes.elementAt(0);
      _speedType = _speedTypes.elementAt(2);
      _temperatureType = _temperatureTypes.elementAt(0);
      _timeType = _timeTypes.elementAt(4);
      _volumeType = _volumeTypes.elementAt(10);
    }

    List<String> getList() {
      switch(_unitType){
        case('Area'):
          return _areaTypes;
          break;
        case('Currency'):
          return _currencyTypes;
          break;
        case('Energy'):
          return _energyTypes;
          break;
        case('Length'):
          return _lengthTypes;
          break;
        case('Mass'):
          return _massTypes;
          break;
        case('Pressure'):
          return _pressureTypes;
          break;
        case('Speed'):
          return _speedTypes;
          break;
        case('Temperature'):
          return _temperatureTypes;
          break;
        case('Time'):
          return _timeTypes;
          break;
        case('Volume'):
          return _volumeTypes;
          break;
        default:
          return null;
          break;
      }
    }

    String getValue() {
      switch(_unitType){
        case('Area'):
          return _areaType;
          break;
        case('Currency'):
          return _currencyType;
          break;
        case('Energy'):
          return _energyType;
          break;
        case('Length'):
          return _lengthType;
          break;
        case('Mass'):
          return _massType;
          break;
        case('Pressure'):
          return _pressureType;
          break;
        case('Speed'):
          return _speedType;
          break;
        case('Temperature'):
          return _temperatureType;
          break;
        case('Time'):
          return _timeType;
          break;
        case('Volume'):
          return _volumeType;
          break;
        default:
          return null;
          break;
      }
    }

    @override
    Widget build(BuildContext context){
      return new Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.white,
                margin: const EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 0.0),
                child: ListView(
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            //color: Colors.grey[200],
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.grey[300],
                              border: Border(
                                top: BorderSide(
                                  color: Colors.grey[400],
                                ),
                                bottom: BorderSide(
                                  color: Colors.grey[400],
                                ),
                                left: BorderSide(
                                  color: Colors.grey[400],
                                ),
                                right: BorderSide(
                                  color: Colors.grey[400],
                                ),
                              ),
                            ),
                            child: DropdownButtonHideUnderline( //To remove the underline
                              child: DropdownButton(
                                iconDisabledColor: Colors.grey[800],
                                isExpanded: true,
                                value: _unitType,
                                items: _unitTypes.map((String value) {
                                  return new DropdownMenuItem(
                                    value: value,
                                    child: Center(
                                      child: Text(
                                        value,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String value) {
                                  setState((){
                                    _unitType = value;
                                    _newValue1 = getValue();
                                    _newValue2 = getValue();
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          TextField(
                            inputFormatters: <TextInputFormatter>[
                              WhitelistingTextInputFormatter.digitsOnly,
                            ],
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            controller: null, //TODO
                            style: new TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.grey,width: 1.2),
                              ),
                              hintText: "Enter a number",
                              hintStyle: TextStyle(fontSize: 16.0, color: Colors.black87),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey[400],
                                ),
                                left: BorderSide(
                                  color: Colors.grey[400],
                                ),
                                right: BorderSide(
                                  color: Colors.grey[400],
                                ),
                              ),
                            ),
                            child: DropdownButtonHideUnderline( //To remove the underline
                              child: DropdownButton(
                                iconDisabledColor: Colors.grey[800],
                                isExpanded: true,
                                value: _newValue1,
                                hint: Center(
                                  child: Text(
                                    'From',
                                  ),
                                ),
                                items: getList().map((String value) {
                                  return new DropdownMenuItem(
                                    value: value,
                                    child: Center(
                                      child: Text(
                                        value,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String value) {
                                  setState((){
                                    _newValue1 = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '=',
                              style: new TextStyle(
                                fontSize: 20.0,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 44.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            height: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.2,
                              ),
                            ),
                            child: TextField(
                              enabled: false,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              controller: null, //TODO
                              style: new TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: const Icon(Icons.arrow_right, color: Colors.black,),
                                hintText: "",
                                hintStyle: TextStyle(fontSize: 14.0, color: Colors.black87),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border(
                                 bottom: BorderSide(
                                    color: Colors.grey[400],
                                 ),
                                 left: BorderSide(
                                   color: Colors.grey[400],
                                 ),
                                 right: BorderSide(
                                   color: Colors.grey[400],
                                 ),
                              ),
                            ),
                            child: DropdownButtonHideUnderline( //To remove the underline
                              child: DropdownButton(
                                iconDisabledColor: Colors.grey[800],
                                isExpanded: true,
                                value: _newValue2,
                                hint: Center(
                                  child: Text(
                                    'To',
                                  ),
                                ),
                                items: getList().map((String value) {
                                  return new DropdownMenuItem(
                                    value: value,
                                    child: Center(
                                      child: Text(
                                        value,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String value) {
                                  setState((){
                                    _newValue2 = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Center(
                          child: SizedBox(
                            height: 60,
                            width: 140,
                            child: RaisedButton(
                              onPressed: null,
                              disabledColor: Colors.lightBlueAccent[100],
                              color: Colors.lightGreenAccent,
                              elevation: 20.0,
                              highlightColor: Colors.lightGreenAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0)
                              ),
                              child: new Text(
                                'Convert',
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'This app was developed by GF', // my personal signature
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    double _convert(double user_input){
      double _result;
      String _fromUnit, _toUnit;
      _fromUnit = _newValue1;
      _toUnit = _newValue2;

      //Unit(name: _fromUnit, factor: Unit.fromJson().factor);
    }

  }//class _BodyWidgetState




