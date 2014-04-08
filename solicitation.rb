require 'CSV'
puts "where is the file?"

@file = gets.chomp

@a = CSV.read(@file)

@a.delete_at(0)

@a.each do |row|
   row.compact!
end

@new_file = File.new("final_solicitations.txt", "w")

@a.each do |x|
  @new_file.puts %Q[exec NAME..AddSolicitationCode @SolicitationCode = '#{x[1]}',]
  @new_file.puts %Q[@variable = '#{x[2]}',]
  @new_file.puts %Q[@variable = '#{x[4]}',]
  @new_file.puts %Q[@variable = '#{x[5]}',]
  @new_file.puts "\n\n"
end       
