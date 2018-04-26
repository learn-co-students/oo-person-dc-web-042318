# your code goes here

class Person

  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(int)
    if int > 10
      @happiness = 10
    elsif int < 0
      @happiness = 0
    else
      @happiness = int
    end
  end

  def hygiene=(x)
    if x > 10
      @hygiene = 10
    elsif x < 0
      @hygiene = 0
    else @hygiene = x
    end
  end


  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

def take_bath
  self.hygiene = self.hygiene + 4
 return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene -= 3
  self.happiness += 2
  return "♪ another one bites the dust ♫"
end

def call_friend(instance)
  self.happiness += 3
  instance.happiness += 3
  return "Hi #{instance.name}! It's #{self.name}. How are you?"
#instance.happiness = instance.happiness + 3
end

def start_conversation(instance, topic)
  if topic == "politics"
    self.happiness -= 2
    instance.happiness -= 2
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness += 1
    instance.happiness += 1
    return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
end
end

end
