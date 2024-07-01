String correctTime(DateTime date) {
  var hour = date.hour.toString();
  var minute = date.minute.toString();

  if (date.hour < 10) {
    hour = "0${date.hour}";
  }
  if (date.minute < 10) {
    minute = "0${date.minute}";
  }
  return '$hour:$minute';
}

String correctDate(DateTime date) {
  var year = date.year;
  var month = date.month;
  var day = date.day;

  return '$day ${getMonthName(month)} $year';
}

String getMonthName(int month) {
  String name = '';

  switch (month) {
    case 1:
      name = 'января';
      break;
    case 2:
      name = 'февраля';
      break;
    case 3:
      name = 'марта';
      break;
    case 4:
      name = 'апреля';
      break;
    case 5:
      name = 'мая';
      break;
    case 6:
      name = 'июня';
      break;
    case 7:
      name = 'июля';
      break;
    case 8:
      name = 'августа';
      break;
    case 9:
      name = 'сентября';
      break;
    case 10:
      name = 'октября';
      break;
    case 11:
      name = 'ноября';
      break;
    case 12:
      name = 'декабря';
      break;
    default:
      name = '';
  }

  return name;
}