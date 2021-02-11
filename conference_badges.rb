guests = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
def badge_maker(guest)
  "Hello, my name is #{guest}."
end

def batch_badge_creator(guests)
  guests.collect{|guest| "Hello, my name is #{guest}."}
end

def assign_rooms(guests)
  guests.each_with_index.collect{|guest, i| "Hello, #{guest}! You'll be assigned to room #{i+1}!"}
end

def printer(guests)
  batch_badge_creator(guests).each{|badge| puts badge}
  assign_rooms(guests).each{|room| puts room}
end

printer(guests)