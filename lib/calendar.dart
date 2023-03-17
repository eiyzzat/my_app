import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  DateTime today =DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today = day;
    });
  }




  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
      ),
      body: content(),
    );
  }

  Widget content(){
    return Column(
      children: [
        
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            child: TableCalendar(
              headerStyle: HeaderStyle(formatButtonVisible: false),
              selectedDayPredicate: (day)=> isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(2021,03,17), 
              lastDay: DateTime.utc(2030,03,17),
              onDaySelected: _onDaySelected,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
                    child: 
                      Image.asset('lib/images/hello.png',height: 200,),
                    
                  ),
        ),
        
      ],
      
    );

  }
}