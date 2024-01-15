def retire_time
    puts "What is your age? "
    age = gets.chomp.to_i
    puts "At what age would you like to retire?"
    retire_age= gets.chomp.to_i
    present_year = Time.now.year
    year_of_retirement = present_year + retire_age
    years_to_work = retire_age - age
    puts "It's #{present_year}. You will retire in #{year_of_retirement}"
    puts "you have only #{years_to_work} years of work to go!"
end

retire_time
