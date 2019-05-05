require 'birthday_list'

describe BirthdayList do

  describe '#add' do
    it "adds a name and a date into the list" do
      expect(subject.add('Ciprian', '14/06/1984')).to eq [{ name: 'Ciprian', dob: '14/06/1984' }]
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

  describe '#check_bday' do
    it "displays who celebrates a bday today from your list" do
      allow(Date).to receive(:today).and_return Date.new(2019, 1, 1)
      subject.add('Mary Poppin', '01/01/2001')
      expect(subject.check_bday).to eq("It's Mary Poppin's birthday today! They are 18 years old!")
    end
  end
end
