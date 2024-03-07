me = { "name": 'Gabriel Owusu', "age": 36 }

me[:hobbies] = %w[gaming coding eating]

me[:hobbies].each do |item|
  puts item.capitalize if item.include?('cod')
end

me.each do |key, val|
  puts "#{key}=>#{val}"
end

['Hello world'].each do |item|
  puts item
end
