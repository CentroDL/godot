require 'date'

module TimeTravelable

  def go_back_in_time(years, months, days)
    go_back_years(years)
    go_back_months(months)
    go_back_days(days)
  end

  def go_forward_in_time(years, months, days)
    go_forward_years(years)
    go_forward_months(months)
    go_forward_days(days)
  end

  def go_back_years(year_count)
    year_count.times { self.location_in_time = location_in_time.prev_year }
    "Arrived in #{location_in_time.strftime('%A, %B %e, %Y')}"
  end

  def go_forward_years(year_count)
    year_count.times { self.location_in_time = location_in_time.next_year }
    "Arrived in #{location_in_time.strftime('%A, %B %e, %Y')}"
  end

  def go_back_months(month_count)
    month_count.times { self.location_in_time = location_in_time.prev_month }
    "Arrived in #{location_in_time.strftime('%A, %B %e, %Y')}"
  end

  def go_forward_months(month_count)
    month_count.times { self.location_in_time = location_in_time.next_month }
    "Arrived in #{location_in_time.strftime('%A, %B %e, %Y')}"
  end

  def go_back_days(day_count)
    day_count.times { self.location_in_time = location_in_time.prev_day }
    "Arrived in #{location_in_time.strftime('%A, %B %e, %Y')}"
  end

  def go_forward_days(day_count)
    day_count.times { self.location_in_time = location_in_time.next_day }
    "Arrived in #{location_in_time.strftime('%A, %B %e, %Y')}"
  end

  def pretty_print_location_in_time
    location_in_time.strftime("%A, %B %e, %Y")
  end

end
