#require "pry"

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    badge_messages = []
    names.each do |name|
        badge_messages << badge_maker(name)
    end
    badge_messages
end

def assign_rooms(names)
    #room_assingments = []
    names.collect do |name|
        room = names.index(name) + 1
        "Hello, #{name}! You'll be assigned to room #{room}!"
        #binding.pry
    end
    #room_assingments
end

def printer(attendees)
    batch_badge_creator(attendees).each do |badge_message|
        puts badge_message
    end
    assign_rooms(attendees).each do |room_assingment|
        puts room_assingment
    end
end

#printer(["alex", "brian", "josie"])