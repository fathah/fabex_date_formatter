# fabexdateformatter

Using this package you can format your date easily

## Getting Started

### Import the package
```

import 'package:fabexdateformatter/fabexdateformatter.dart';

```

### Create an object of ```FabexFormatter```
```

FabexFormatter fabexFormatter = FabexFormatter();

```
## Available Functions

```
fabexFormatter.timeOfDayToJM(TimeOfDay tod);
// Converts TimeOfDay to time. TimeOfDay(22, 30) returns 10:30 PM

fabexFormatter.timeOfDayToDateTimeString(TimeOfDay tod);
// Converts TimeOfDay to Date and return as a String

fabexFormatter.dateTimeNowToTimeOfDay(String date);
// Converts TimeOfDay to Date and return as TimeOfDay

fabexFormatter.dateTimeToTimeOfDay(DateTime date);

fabexFormatter.dateTimeToStringDate(DateTime date);
// Converts DateTime to Time and date and returns as String
// Eg: DateTime(2020, 10, 15, 22, 30, 0000) returns 10:30 PM - 15/10/2020

fabexFormatter.firestoreTimeToDateTime(fireStoreTime);
// Converts Firebase Firestore Time to flutter DateTime.
// Eg: September 13 2020 at 6:36:56 PM returns DateTime(2020, 09, 13, 06, 36, 5600)

fabexFormatter.firestoreTimeToMonthYear(fireStoreTime);
// Convert Firebase Firestore Time to flutter DateTime and returns month and year as list.
// Eg: September 13 2020 at 6:36:56 PM returns [2020, 09, 15]

fabexFormatter.getHourAndMinute(String dbDate);
// Pass String DateTime as 1 @required parameter and it returns Hour and minute concatenated.
// Eg: Pass "2020-09-05 08:00:00.000" and get 800 aS response.

fabexFormatter.stringDateTimeToStringDate(String date);
// Pass String DateTime as 1 @required parameter and it returns date.
// Eg: Pass "2020-09-05 08:00:00.000" and get "05/09/2020"

fabexFormatter.getMonthName(int monthNumber);
// Get the name of the entered month

fabexFormatter.prevYear(currentYear);
// Get the Previous Year

fabexFormatter.getPrevMonth(int currentMonth);
// Get the previous month

fabexFormatter.getPreviousMonthNum(int currentMonth);
// Get the previous month

fabexFormatter.getCurrentMonthName();
// Get the name of the current month


```

