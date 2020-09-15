library fabexdateformatter;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FabexFormatter{

/// You can call several useful methods through the FabexFormatter Class

  String timeOfDayToJM(TimeOfDay tod) {
    
    /// Convert TimeOfDay to time
    /// Example: ```TimeOfDay(22, 30)``` returns ```10:30 PM```
    
    final now = new DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    final format = DateFormat.jm(); ///"6:00 AM"
    return format.format(dt);
  }


  String timeOfDayToDateTimeString(TimeOfDay tod) {
    /// Convert TimeOfDay to Date and return as a String
    final now = new DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
    return dt.toString();
  }

  TimeOfDay dateTimeNowToTimeOfDay(String date) {
    /// Convert TimeOfDay to Date and return as a String
    final now = DateTime.parse(date);
    final dt = DateTime(now.year, now.month, now.day, now.hour, now.minute);
    return TimeOfDay.fromDateTime(dt);
  }

  TimeOfDay dateTimeToTimeOfDay(DateTime date) {
    /// Convert DateTime to TimeOfDay
    final dt = DateTime(date.year, date.month, date.day, date.hour, date.minute);
    return TimeOfDay.fromDateTime(dt);
  }

  String dateTimeToStringDate(DateTime date) {
    /// Convert DateTime to Time and date.
    /// Return as String.
    /// One @required parameter is to enter in ```DateTime``` format.
    /// Example: ```DateTime(2020, 10, 15, 22, 30, 0000)``` returns ```10:30 PM - 15/10/2020```
    final format = DateFormat.jm();
    String time = format.format(date);
    String resdDate = DateFormat('dd/MM/yyyy').format(date);
    return "$time - $resdDate";
  }


  DateTime firestoreTimeToDateTime(firebasDate) {
    /// Convert Firebase Firestore Time to flutter DateTime.
    /// Return as DateTime.
    /// Example: ```September 13 2020 at 6:36:56 PM``` returns ```DateTime(2020, 09, 13, 06, 36, 5600)```
    return DateTime.parse(firebasDate.toDate().toString());

  }


  List firestoreTimeToMonthYear(firebasDate) {
    /// Convert Firebase Firestore Time to flutter DateTime and returns month and year as list.
    ///  Example: ```September 13 2020 at 6:36:56 PM``` returns ```[2020, 09, 15]```
    DateTime parsed = DateTime.parse(firebasDate.toDate().toString());
    String year = DateFormat('yyyy').format(parsed);
    String month = DateFormat('MM').format(parsed);
    String day = DateFormat('dd').format(parsed);
    return [year, month, day];
  }

  int getHourAndMinute(String dbDate) {
    /// Pass String DateTime as 1 @required parameter and it returns Hour and minute concatenated.
    /// Eg: Pass "2020-09-05 08:00:00.000" and get 800 aS response.
    DateTime parsed = DateTime.parse(dbDate);
    String hour = DateFormat('H').format(parsed);
    String minute = DateFormat('mm').format(parsed);
    String joined = "$hour$minute";
    return int.parse(joined);
  }

  String stringDateTimeToStringDate(String date) {
    /// Pass String DateTime as 1 @required parameter and it returns date.
    /// Eg: Pass "2020-09-05 08:00:00.000" and get "05/09/2020"
    DateTime parsed = DateTime.parse(date);
    String resdDate = DateFormat('dd/MM/yyyy').format(parsed);
    return resdDate;
  }
  String getMonthName(int monthNumber) {
    ///Get the name of the entered month
    switch (monthNumber) {
      case 1:
        return "January";
        break;
      case 2:
        return "February";
        break;
      case 3:
        return "March";
        break;
      case 4:
        return "April";
        break;
      case 5:
        return "May";
        break;
      case 6:
        return "June";
        break;
      case 7:
        return "July";
        break;
      case 8:
        return "August";
        break;
      case 9:
        return "September";
        break;
      case 10:
        return "October";
        break;
      case 11:
        return "November";
        break;
      case 12:
        return "December";
        break;
      default:
        return "Unknown";
    }
  }

  String prevYear(currentYear) {
    int curYr;
    if(currentYear is String){
      curYr = int.parse(currentYear);
    }else{
      curYr = currentYear;
    }
    int finalYr = curYr - 1;
    return finalYr.toString();
  }

  String getPrevMonth(int currentMonth) {
    /// Enter the month number as month

    int finalMnth = currentMonth - 1;
    if (finalMnth < 10) {
      return "0$finalMnth";
    } else {
      return finalMnth.toString();
    }
  }

  int getPreviousMonthNum(int currentMonth) {
    if (currentMonth == 1) {
      return 12;
    } else {
      return currentMonth - 1;
    }
  }
  String getCurrentMonthName() {
    ///Get the name of the current month
    DateTime now = DateTime.now();
    String month = DateFormat('MM').format(now);
    int  monthNumber = int.parse(month);
    switch (monthNumber) {
      case 1:
        return "January";
        break;
      case 2:
        return "February";
        break;
      case 3:
        return "March";
        break;
      case 4:
        return "April";
        break;
      case 5:
        return "May";
        break;
      case 6:
        return "June";
        break;
      case 7:
        return "July";
        break;
      case 8:
        return "August";
        break;
      case 9:
        return "September";
        break;
      case 10:
        return "October";
        break;
      case 11:
        return "November";
        break;
      case 12:
        return "December";
        break;
      default:
        return "Unknown";
    }
  }

}

