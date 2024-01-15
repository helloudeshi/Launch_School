# def room_area
#     puts "Enter the length of the room in meters: "
#     length = gets.chomp
#     puts "Enter the width of the room in meters:"
#     width = gets.chomp
#     area = length.to_i * width.to_i
#     puts "The area of the room is #{area} square meters (#{area * 10.7639} square feet)"
# end
def room_area_feet
    puts "Enter the length of the room in feet: "
    length = gets.to_f
    puts "Enter the width of the room in feet:"
    width = gets.to_f
    area_squarefeet = (length * width).round(2)
    area_squareinches = (area_squarefeet *144).round(2)
    area_squarecentimeters = ((area_squarefeet/10.7639) *100*100).round(2)
    puts "The area of the room is #{area_squarefeet} square feet"
    puts "The area of the room is #{area_squareinches} square inches"
    puts "The area of the room is #{area_squarecentimeters} square centimeters"
end


room_area_feet