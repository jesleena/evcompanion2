import 'package:evcompanion2/presentation/view/booking_review/booking_review_page.dart';
import 'package:evcompanion2/utils/color_constant.dart';
import 'package:evcompanion2/utils/green_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:time_range/time_range.dart';
import 'package:percent_indicator/percent_indicator.dart';




/// My app class to display the date range picker
class BookingSlot extends StatefulWidget {
  @override
  BookingSlotState createState() => BookingSlotState();
}

/// State for MyApp
class BookingSlotState extends State<BookingSlot> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';


// Update the current values
  RangeValues currentValues = RangeValues(0, 0);
  int startPosition = 0;
  int endPosition =0;
  int estimate=1;
  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    /// The argument value will return the changed date as [DateTime] when the
    /// widget [SfDateRangeSelectionMode] set as single.
    ///
    /// The argument value will return the changed dates as [List<DateTime>]
    /// when the widget [SfDateRangeSelectionMode] set as multiple.
    ///
    /// The argument value will return the changed range as [PickerDateRange]
    /// when the widget [SfDateRangeSelectionMode] set as range.
    ///
    /// The argument value will return the changed ranges as
    /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
    /// multi range.
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
        // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }


    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(onPressed:() =>  Navigator.of(context).pop(), icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
backgroundColor: Colors.white,
            ),
            body: SingleChildScrollView(
                child: Column(
                  

                  children: <Widget>[

                    Text( "Book a slot",style: ColorConstants.head1Style),

                    Align(alignment:Alignment.topLeft ,
                        child: Text("Select Schedule",style: ColorConstants.subHeadStyle)),
                    SfDateRangePicker(
                      rangeSelectionColor: Colors.green,
                      onSelectionChanged: _onSelectionChanged,
                      selectionMode: DateRangePickerSelectionMode.range,
                      initialSelectedRange: PickerDateRange(
                          DateTime.now().subtract(const Duration(days: 4)),
                          DateTime.now().add(const Duration(days: 3))),
                    ),

                    Align(alignment:Alignment.topLeft ,
                        child: Text("Select Time",style: ColorConstants.subHeadStyle)),
                    TimeRange(
                      fromTitle: Text('From', style: TextStyle(fontSize: 18, color: Colors.grey),),
                      toTitle: Text('To', style: TextStyle(fontSize: 18, color: Colors.grey),),
                      titlePadding: 20,
                      textStyle: TextStyle(fontWeight: FontWeight.normal, color: Colors.black87),
                      activeTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),

                      backgroundColor: Colors.transparent,
                      activeBackgroundColor: Colors.orange,
                      firstTime: TimeOfDay(hour: 14, minute: 30),
                      lastTime: TimeOfDay(hour: 20, minute: 00),
                      timeStep: 10,
                      timeBlock: 30,
                      onRangeCompleted: (range) => setState(() => print(range)),
                    ),
                    
                    Container(
                      color: Colors.grey[200],
                      height: 150,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text( "How much time needed to charge the vehicle",style: ColorConstants.subHeadStyle1),
                          RangeSlider(
                            activeColor: Colors.green,
                            values: currentValues,
                            min: 0,
                            max: 10,
                            onChanged: (RangeValues values) {
                              setState(() {
                                currentValues = values;
                                startPosition = currentValues.start.toInt();
                                endPosition = currentValues.end.toInt();
                                estimate=endPosition*10;
// Update the current values
                              });
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(' $startPosition hours'),
                              Text(' $endPosition hours'),
                            ],
                          ),Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text( "Price estimation",style: ColorConstants.subHeadStyle1),
                              Text('\$  $estimate'),
                            ],
                          ),

                        ],
                      ),
                    ),
                    GreenElevatedButton(text: "Continue", onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookingReviewPage(),)),)
                  ],
                ))));
  }
  }