class BirthdayList
  def initialize
    @list = []
    @result = ''
  end

  def add(name, date)
    @list << { name: name, dob: date }
  end

  def display_list
   @list.each{|element|
       @result += "name: #{element[:name]}, dob: #{element[:dob]}\n"
    }
    @result.strip
  end
end
