# Write your code here.
#array to be passed into batch_badge_creator method
attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

#badge_maker method that accepts name parameter and returns a formatted badge
def badge_maker(name)
  "Hello, my name is #{name}."
end

#batch_badge_creator should return a list of badge messages
def batch_badge_creator(attendees)
  attendees.collect do |attendee|
    "Hello, my name is #{attendee}."
  end
end

#assign rooms should return a list of welcome messages and room assignments
def assign_rooms(attendees)
  attendees.each_with_index.collect do |attendee, room|
    "Hello, #{attendee}! You'll be assigned to room #{room+1}!"
  end
end

#printer should puts the list of badges and rooms
def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end

  assign_rooms(attendees).each do |room|
    puts room
  end
end