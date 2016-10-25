class Solutions

  # how old I will be in e.g. 2045 or how many years it was until I would be born
  def calculate_age(year_of_birth, current_year)
  	age = current_year - year_of_birth 
    return "You are #{age} years old." if age > 1
    return "You are 1 year old." if age == 1
    return "You were born this very year!" if age == 0
    return "You will be born in 1 year." if age == -1
    return "You will be born in #{age.abs} years." if age < -1
  end

  # median used in statistics to separate higher half of data from the lower half.
  # mean is an average
  # method returns mean, median or same; if mean > median, median > mean or mean == median
  def mean_vs_median(numbers)
    # calculate mean
    mean = numbers.inject(:+) / numbers.length 
    arr_length = numbers.sort!.length

    # calculate median
    median = arr_length.odd? ? numbers[(numbers.length - 1) / 2] : ( numbers[numbers.length/2] + numbers[numbers.length/2 - 1] )/2.to_f

    return "mean" if mean > median
    return "median" if median > mean
    return "same"
  end

  # how many of new £5 notes could you get with what's left from my salary after paying all bills?
  def get_new_notes(salary,bills)
    bills = bills.inject(:+)
    notes = (salary - bills) / 5
    notes <= 0 ? 0 : notes
  end
end