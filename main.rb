require 'pry'
require './candidates'
require './filters'

  puts "find 1: This will display candidate with id 1"
  puts "all:  This will print them all out to the screen (one per line)"
  puts "qualified: This will print only qualified candidates, ordered by experience and points (one per line)"
  puts "sorted: sorted list of all candidates by 1. years of experience and 2. github points "
  puts "quit: Exit the REPL / program"
  puts "---" * 10

loop do
  puts "Please enter command"
  usr_input = gets.chomp.downcase

  case usr_input
    when 'find 1'
      puts find(1)
    when 'all'
      puts all(@candidates)
    when 'qualified'
      puts qualified_candidates(@candidates)
    when 'sorted'
      puts ordered_by_qualification(@candidates)
    when 'quit'
      break
    else
      puts 'Please enter valid command'
  end
end