require 'birthday_list'

describe BirthdayList do
  birthday_list = BirthdayList.new
  it "adds the name and the birthday to the list" do
    expect(birthday_list).to respond_to(:add).with(2).arguments
  end
  describe '#add' do
    it "adds a name and a date into the list" do
      birthday_list = BirthdayList.new
      expect(birthday_list.add('Ciprian', '14/06/1984')).to eq [{ name: 'Ciprian', dob: '14/06/1984' }]
    end




    it "adds 2 sets of name and date into the list" do
      subject.add('Ciprian', '14/06/1984')
      expect(subject.add('Roxana', '12/02/1989')).to eq [{ name: 'Ciprian', dob: '14/06/1984' }, { name: 'Roxana', dob: '12/02/1989' }]
    end
  end

  describe '#display_list' do
    it "displays all the names in the list in a nice format" do
      subject.add('Ciprian', '14/06/1984')
      subject.add('Roxana', '12/02/1989')
      expect(subject.display_list).to eq("name: Ciprian, dob: 14/06/1984\nname: Roxana, dob: 12/02/1989")
    end
  end
end
