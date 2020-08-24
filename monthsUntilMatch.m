function wait_in_months = monthsUntilMatch(d_in)
%Problem 2639. How Many Months Until It's Today Again?
  wait_in_months = 0;
  name = day(datetime(d_in), 'name');
  while 1
    wait_in_months = wait_in_months + 1;
    neue = day(datetime(d_in) + calmonths(wait_in_months), 'name');
    if strcmpi(name, neue)
      break;
    end
  end
end
