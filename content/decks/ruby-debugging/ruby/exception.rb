# Open and read from a text file
# Note that since a block is given, file will automatically be closed when the block terminates
begin
  File.open('exception.rb', 'r') do |f1|
    while line = f1.gets
      puts line
    end
  end

  # Create a new file and write to it
  File.open('test.rb', 'w') do |f2|
    # use "" for two lines of text
    f2.puts "Created by bdougieYO"
  end
rescue Exception => msg
  # display the system generated error message
  puts msg
end
