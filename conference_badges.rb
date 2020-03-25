# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end 

def batch_badge_creator(array)
  badges = []
  array.each{ |name| badges << badge_maker(name)}
  badges
end 

def assign_rooms(speakers)
  room = 1 
  room_assignments = Array.new 
  speakers.each do |speaker, index|
    room_assignments << "Hello, #{speaker}! You'll be assigned to room #{index}!"
    room += 1 
  end 
  room_assignments
end 

def printer(speakers)
  badges = batch_badge_creator(speakers)
  room_assignments = assign_rooms(speakers)
  print_number = 0 
  badges.each do |attendee|
    puts attendee 
    puts room_assignments[print_number]
    print_number += 1 
  end 

end 