require 'fileutils'
if File.zero?("list.txt")
  abort "Пожалуйста наполните файл list.txt"
  else
new_array = File.readlines("list.txt").sort
File.open("list.txt","w") do |file|
  new_array.each {|n| file.puts(n)}
end
end
@stud_Data=File.read("list.txt").split("\n")

def putOnScreen
  File.open("results.txt") do |file|
    file.readlines().each { |line|
      puts line
    }
  end
end

def find
  puts "Введите возраст"
  value=gets.chomp
  stud=@stud_Data
  stud.each do |x|
    if x[value]
      File.write("results.txt", "#{x}\n", mode: "a")
    end
  end
end



loop do

  puts "Добавить сотрудника - 'write' ,results.txt - 'result', выйти - 'exit' "
  value=gets
  case value
  when "write\n" then find
  when "result\n" then putOnScreen
  when "exit\n" then abort


  end



  end