# your code goes here
require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness, :hygiene
    # attr_accessor :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = 8
    end
    # binding.pry

    def happiness=(value)
        # @happiness = value[0-10]
        # @happiness = value > -1 || < 11
        # self.happiness.clamp(0, 10)
        @happiness = value.clamp(0, 10)
    end
    # binding.pry

    def hygiene=(value)
        # @happiness = value[0-10]
        # @happiness = value > -1 || < 11
        # self.happiness.clamp(0, 10)
        @hygiene = value.clamp(0, 10)
    end
# Person#happy?: returns true if the person's happiness is more than seven; otherwise, it returns false.
    def happy?
        # if happy > 7
        #     true
        # else false
        # end
        # happy > 7 ? true : false
        happiness > 7 ? true : false
    end
    # binding.pry

    def clean?
        self.hygiene > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        # if topic = "politics"
        if topic == 'politics'
            self.happiness -= 2
            person.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1
            person.happiness += 1
            'blah blah sun blah rain'
        else 
            'blah blah blah blah blah'
        end
    end

end

# learn test --f-f
# jen = Person.new("Jen")