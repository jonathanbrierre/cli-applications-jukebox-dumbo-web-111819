
require 'pry'
require 'pp'
def help 
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.strip
  valid_inputs = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  if songs.include?(song)  
    puts "Playing #{song}"
  elsif valid_inputs.include?(song)
    puts "Playing #{songs[song.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end 

def list(songs)
  
  songs.each_with_index {|item,index| puts "#{index+ 1}. #{item}"}
  
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  
  while !!5 do 
    
    if command == "help"
      1.times do 
        help 
      end 
     
    elsif command == "list"
      1.times do 
        list(songs)
      end 
    elsif command == "play"
      1.times do 
        play(songs)
      end 
    end
    
    command = gets.strip
    
    break if command == "exit"
  end 
  
   if command == "exit"
     exit_jukebox
   end
end 

