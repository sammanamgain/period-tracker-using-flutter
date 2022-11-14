import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import './home.dart';
import './community.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  CalendarFormat format =
      CalendarFormat.month; //to display calendar in month format
  DateTime today = DateTime.now();
  DateTime? select; // when user select the specified date
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Center(child: Text(" CALENDAR"))),
          body: Column(
            children: [
              TableCalendar(
                firstDay: DateTime(2022),
                lastDay: DateTime(2023),
                focusedDay: today,
                rowHeight: 60,
                // headerStyle:HeaderStyle()

                headerStyle: const HeaderStyle(
                  titleTextStyle: TextStyle(
                      color: Colors.teal, fontWeight: FontWeight.bold),
                  leftChevronIcon: Icon(
                    Icons.arrow_back,
                    color: Colors.teal,
                  ),
                ),
                daysOfWeekStyle: const DaysOfWeekStyle(
                    weekendStyle: TextStyle(color: Colors.red)),
                calendarStyle: const CalendarStyle(
                    weekendTextStyle: TextStyle(color: Colors.red),
                    todayDecoration: BoxDecoration(
                        color: Colors.amber, shape: BoxShape.circle)),
                onDaySelected: (selectedDay, focusedDay) => {
                  if (!isSameDay(selectedDay, select))
                    {
                      setState(() {
                        select = selectedDay;
                        today = focusedDay;
                      })
                    }
                },
                selectedDayPredicate: (day) {
                  return isSameDay(day, select);
                },
                onPageChanged: (focusedDay) {
                  today = focusedDay;
                },
              ),
            ],
          ),
          bottomNavigationBar: Row(
            //    crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {
                  //ClearSession();
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context, true);
                  }
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home(22.0, 22.0)));
                }
                // Add your onPressed code here!
                ,
                backgroundColor: Colors.green,
                child: const Icon(Icons.home),
              ),
              const FloatingActionButton(
                onPressed:
                    null /* () {
                  //ClearSession();
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context, true);
                  }
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Calender()));
                }*/
                // Add your onPressed code here!
                ,
                backgroundColor: Colors.green,
                child: Icon(Icons.calendar_month),
              ),
              FloatingActionButton(
                onPressed: () {
                  //ClearSession();
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context, true);
                  }
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Community()));
                },
                backgroundColor: Colors.green,
                child: const Icon(Icons.article_rounded),
              ),
              FloatingActionButton(
                onPressed: () {
                  // Add your onPressed code here!
                },
                backgroundColor: Colors.green,
                child: const Icon(Icons.settings_accessibility_sharp),
              ),
            ],
          ),
        ));
  }
}
