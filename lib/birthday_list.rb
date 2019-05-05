class BirthdayList
  def initialize
    @list = []
  end

  def add(name, date)
    @list << { name: name, dob: date }
  end

  def list
    puts @list
  end
end
