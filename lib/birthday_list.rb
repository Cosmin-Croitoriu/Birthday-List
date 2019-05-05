require 'date'
class BirthdayList
  def initialize
    @list = []
    @result = ''
  end

  def add(name, date)
    @list << { name: name, dob: date }
  end

  def display_list
    @list.each { |element|
      @result += "name: #{element[:name]}, dob: #{element[:dob]}\n"
    }
    @result.strip
  end

  def check_bday
    birthday_people = ""
    @list.each { |person|
      dob = person[:dob]
      if birthday_day?(dob) && birthday_month?(dob)
        age = calculate_age(dob)
        birthday_people +=
        "It's #{person[:name]}'s birthday today! They are #{age} years old!\n"
      end
    }
    birthday_people.strip
  end

private
  def birthday_day?(dob)
    Date.parse(dob).day == Date.today.day
  end

  def birthday_month?(dob)
    Date.parse(dob).month == Date.today.month
  end

  def calculate_age(dob)
    Date.today.year - Date.parse(dob).year
  end

end

bdl = BirthdayList.new
bdl.add("Ciprian", "01-01-2001")
bdl.add("Rox", "05-05-2011")
bdl.display_list
bdl.check_bday
