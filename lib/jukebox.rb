# Add your code here
# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)
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
  if songs.include?(song) || songs[song.to_i - 1]
    puts "Playing #{song}"
  else 
    puts "Invalid input, please try again"
  end
end 

def list (songs)
  this = []
  songs.each_with_index {|item,index| this << "[#{index+ 1}]. #{item}"}
  pp this 
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
    puts "Please enter a command:"
    command = gets.strip
    
    break if command == "exit"
  end 
  
   if command == "exit"
     exit_jukebox
   end
end 

