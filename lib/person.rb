class Person 
attr_reader :name
attr_accessor :bank_account
attr_reader :happiness
attr_reader :hygiene

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end



    def happiness= (happiness)
        
        if (happiness <= 10) && (happiness >= 0)
            @happiness = happiness
        elsif (happiness > 10)
            @happiness = 10
        elsif (happiness < 0)
            @happiness = 0
        end
    end


    def hygiene= (hygiene)
        if (hygiene <= 10) && (hygiene >= 0)
            @hygiene = hygiene
        elsif (hygiene > 10)
            @hygiene = 10
        elsif (hygiene < 0)
            @hygiene = 0
        end
    
    end

    def happy?
        if (@happiness > 7)
            true
        else
            false
        end
    end

    def clean?
if (@hygiene > 7)
    true 
else
    false
    end
end

def get_paid (amount)
    @bank_account = @bank_account + amount
    "all about the benjamins"
end

def take_bath 
   self.hygiene= (@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
    
end

def work_out
    self.happiness= (@happiness + 2)
    self.hygiene= (@hygiene - 3)
    "♪ another one bites the dust ♫"
end

def call_friend friend
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation (friend, topic)
    if (topic === "politics")
        self.happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
    
    elsif (topic == "weather")
        self.happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
    
    else
        "blah blah blah blah blah"
        
    end

end

end

