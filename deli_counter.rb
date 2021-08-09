katz_deli = []

# Build the line method that shows everyone their current place in the line. 
# If there is nobody in line, it should say "The line is currently empty."
def line(katz_deli)
    if katz_deli.empty?
       puts "The line is currently empty."
    else
        current_line = "The line is currently:"
        katz_deli.each.with_index(1) do |person, i|
          current_line << " #{i}. #{person}"
        end
        puts current_line
    end
end

# Build a method that a new customer will use when entering the deli. The take_a_number method 
# should accept two arguments, the array for the current line of people (katz_deli), 
# and a string containing the name of the person joining the end of the line. 
# The method should call out (puts) the person's name along with their position in line. 
# Top-Tip: Remember that people like to count from 1, not from 0 like computers.
def take_a_number(katz_deli, person)
    katz_deli << person
    puts "Welcome, #{person}. You are number #{katz_deli.length} in line."
end
take_a_number(katz_deli, "Tara")

# Build the #now_serving method which should call out (i.e. puts) the next person in line and then remove them from the front. 
# If there is nobody in line, it should call out (puts) that "There is nobody waiting to be served!".
def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli.first}."
        katz_deli.shift
    end
end 