# Write your code here.
require "pry"

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  array.map do |name|
    "Hello, my name is #{name}."
  end
end

def assign_rooms(array)
  array.map do |name|
    index = array.find_index (name)
    "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
end

assign_rooms([ "a", "b", "c" ])

def printer(attendees)
  badges = batch_badge_creator(attendees)
  badges.map do |attendee|
    puts attendee
  end
  rooms = assign_rooms(attendees)
  rooms.map do |room|
    puts room
  end
end

