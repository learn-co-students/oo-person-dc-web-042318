class Person
  attr_accessor :bank_account, :happiness
  attr_reader :name, :hygiene

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(happiness)
    range = (0..10).to_a
    @happiness = range.min_by { |n| (n - happiness).abs }
  end

  def hygiene=(hygiene)
    range = (0..10).to_a
    @hygiene = range.min_by { |n| (n - hygiene).abs }
  end

  def clean?
    hygiene > 7 ? true : false
  end

  def happy?
    happiness > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else 
      "blah blah blah blah blah"
    end
  end
end
