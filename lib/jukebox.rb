def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, idx| puts "#{idx + 1}. #{song}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  users_input = gets.strip
  
  songs.each_with_index do |song_name, idx|
    song_number = idx + 1
    if users_input == song_number || users_input == song_name 
      puts "Playing #{song_name}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  users_command = gets.strip.chomp
  
  while !users_command do 
    puts "Please enter a command:"
  end
  
  
  
  case users_command
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
  else
  end
end
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)

# puts "Please enter a command:"
# users_input = gets.strip.chomp

# help if users_input == "help"
# list(songs) if users_input == "list"

