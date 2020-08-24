function mon = findmonthday(d_in)

  name = day(datetime(d_in), 'name');
  mon = 0;
  while 1
    mon = mon + 1;
    neue = day(datetime(d_in) + calmonths(mon), 'name');
    if strcmpi(name, neue)
      break;
    end
  end
