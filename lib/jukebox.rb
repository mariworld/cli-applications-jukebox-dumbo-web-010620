# # Add your code here
require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
# puts "Enter your name:"
# users_name = gets.strip
# puts say_hello(users_name)

def help
  puts "I accept the following commands:/"
  puts /- help : displays this help message/
  puts /- list : displays a list of songs you can play/
  puts /- play : lets you choose a song to play/
  puts /- exit : exits this program/
end

def list(songs) # may have to use map method to change \\
 songs.each_with_index do |song,index|
  puts "#{index + 1}.#{song}"
  end
end
# i = 0
#   while i < songs.length do
#     puts "\/#{i+1}. #{songs[i]}"
#     i += 1
#   end
#   songs
#   #binding.pry

def play(songs)
  puts "Please enter a song name or number:"
  #binding.pry
  # it's not grabbing list method but that 
  #integer input should correspond to the index of the song
  user_response = gets.strip.to_s
  if songs.include?(user_response)
    puts "Playing #{user_response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  puts "Please enter a command:"
  user_input = gets.strip
end
#list(songs)